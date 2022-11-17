from django.shortcuts import render
from django.views.generic.base import View
from django.template import loader
from django.http.response import HttpResponse
from product.models import Product
import logging
from product.choice import BRAND_CHOICE
from reviewboard.models import Reviewboard
from recommend.models import Recommend
from static.myfunction import getRecentProduct
from django.core.exceptions import ObjectDoesNotExist
import json

# Create your views here.
logger = logging.getLogger( __name__ )

PAGE_SIZE = 15
PAGE_BLOCK = 5

# 상품 상세 정보 페이지
class ProductDetailView(View):
    def get(self, request):
        template = loader.get_template("productDetail.html")
        prodNum = request.GET["prodNum"]
        product = Product.objects.get(prodNum=prodNum)
        product.searchCount += 1
        product.save()
        
        #### 리뷰 게시판도 여기 출력 ###
        count = Reviewboard.objects.filter(prodNum=prodNum).count()
        
        pagenum = request.GET.get("pagenum")
        if not pagenum :
            pagenum = "1"
        pagenum = int(pagenum)
        
        start = (pagenum - 1) * int(PAGE_SIZE)      # (5 - 1) * 10    = 40    슬라이싱을 위해 0~10까지 잡기
        end = start + int(PAGE_SIZE)                # 40 + 10         = 50
        if end > count :
            end = count
        reviews = Reviewboard.objects.order_by("-reviewNum").filter(prodNum=prodNum)[start:end]
        number = count - (pagenum - 1) * int(PAGE_SIZE)
        
        startpage = pagenum // int(PAGE_BLOCK) * int(PAGE_BLOCK) + 1    # 9 // 10 * 10 + 1     = 1
        if pagenum % int(PAGE_BLOCK) == 0:
            startpage -= int(PAGE_BLOCK)
        endpage = startpage + int(PAGE_BLOCK) - 1                       # 1 + 10 - 1           = 10
        pagecount = count // int(PAGE_SIZE)
        if count % int(PAGE_SIZE) > 0 :
            pagecount += 1
        if endpage > pagecount:
            endpage = pagecount
        pages = range(startpage, endpage + 1)
        
        userId = request.session.get("memid")
        if userId:
            logger.info("id:"+userId+",prodNum:"+str(product.prodNum)+",prodName:"+product.prodName+",brand:"+product.brand+",,from:"+request.META["HTTP_REFERER"]+",to:"+request.get_full_path())
        
        recentProducts = getRecentProduct(userId)
        
        context = {
            "count" : count,
            "reviews" : reviews,
            "pagenum" : pagenum,
            "number" : number,
            "pages" : pages,
            "startpage" : startpage,
            "endpage" : endpage,
            "pageblock" : PAGE_BLOCK,
            "pagecount" : pagecount,
            "product" : product,
            "recentProducts" : recentProducts,
            }
        return HttpResponse(template.render(context, request))
    def post(self, request):
        pass

# 상품 전체 리스트 페이지    
class ProductCategoryView(View):
    def get (self,request):
        template=loader.get_template("productCategory.html")
        
        minamount = request.GET.get("minamount")
        maxamount = request.GET.get("maxamount")
        
        if minamount != None and maxamount != None:
            count = Product.objects.filter(prodPrice__gte=minamount).filter(prodPrice__lte=maxamount).count()
        else:
            count = Product.objects.all().count()
        
        pagenum = request.GET.get( "pagenum" )
        if not pagenum :
            pagenum = "1"
        pagenum = int( pagenum )
        
        start = ( pagenum - 1 ) * int(PAGE_SIZE)          # ( 5 - 1 ) * 10 + 1     41
        end = start + int(PAGE_SIZE)                      # 41 + 10 - 1            50
        if end > count :
            end = count
        
        if minamount != None and maxamount != None:
            products = Product.objects.filter(prodPrice__gte=minamount).filter(prodPrice__lte=maxamount).order_by("-prodNum" )[start:end]
        else:
            products = Product.objects.all().order_by("-prodNum" )[start:end] # jsp와 다르게 슬라이싱해서 씀
        number = count - ( pagenum - 1 ) * int(PAGE_SIZE )
        
        startpage = pagenum // int(PAGE_BLOCK) * int(PAGE_BLOCK) + 1       # 9 // 10 * 10 + 1    1
        if pagenum % int(PAGE_BLOCK) == 0:
            startpage -= int(PAGE_BLOCK)
        endpage = startpage + int(PAGE_BLOCK) - 1                         # 1 + 10 -1           10
        pagecount = count // int(PAGE_SIZE)
        if count % int(PAGE_SIZE) > 0 :
            pagecount += 1
        if endpage > pagecount :
            endpage = pagecount
        pages = range( startpage, endpage+1 )
        
        lastProducts = Product.objects.order_by("-prodNum")[0:5]

        recommends = []
        userId = request.session.get("memid")
        if userId:
            try:
                recos = Recommend.objects.filter(userId=userId).filter(status="gender_age").order_by("-recommendNum").first().prodList
                gender_age_recos = json.loads(recos)
                recommends = [Product.objects.get(prodNum=prodNum) for prodNum in gender_age_recos]
            except (ObjectDoesNotExist, AttributeError):
                recommends = []
        
        userId = request.session.get("memid")
        recentProducts = getRecentProduct(userId)
        
        context={
            "brands" : BRAND_CHOICE,
            "count" : count,
            "products" : products,
            "pagenum" : pagenum,
            "number" : number,
            "pages" : pages,
            "startpage" : startpage,
            "endpage" : endpage,
            "pageblock" : PAGE_BLOCK,
            "pagecount" : pagecount,
            "recommends" : recommends,
            "lastProducts" : lastProducts,
            "recentProducts" : recentProducts,
            "minamount" : minamount,
            "maxamount" : maxamount,
            }
        if userId:
            logger.info("id:"+userId+",,,,pageNum:"+str(pagenum)+",from:"+request.META["HTTP_REFERER"]+",to:"+request.get_full_path())
        return HttpResponse(template.render( context ,request))
    def post(self,request):
        pass

# 상품 물로켓 리스트 페이지
class WaterRocketView(View):
    def get (self,request):
        template=loader.get_template("waterRocket.html")
        minamount = request.GET.get("minamount")
        maxamount = request.GET.get("maxamount")
        
        if minamount != None and maxamount != None:
            count = Product.objects.filter(prodPrice__gte=minamount).filter(prodPrice__lte=maxamount).count()
        else:
            count = Product.objects.all().count()
            
        pagenum = request.GET.get( "pagenum" )
        if not pagenum :
            pagenum = "1"
        pagenum = int( pagenum )
        
        start = ( pagenum - 1 ) * int(PAGE_SIZE)          # ( 5 - 1 ) * 10 + 1     41
        end = start + int(PAGE_SIZE)                      # 41 + 10 - 1            50
        if end > count :
            end = count
            
        if minamount != None and maxamount != None:
            products = Product.objects.filter(prodPrice__gte=minamount).filter(prodPrice__lte=maxamount).order_by("-prodNum" )[start:end]
        else:
            products = Product.objects.all().order_by("-prodNum" )[start:end] # jsp와 다르게 슬라이싱해서 씀
        number = count - ( pagenum - 1 ) * int(PAGE_SIZE )
        
        startpage = pagenum // int(PAGE_BLOCK) * int(PAGE_BLOCK) + 1       # 9 // 10 * 10 + 1    1
        if pagenum % int(PAGE_BLOCK) == 0:
            startpage -= int(PAGE_BLOCK)
        endpage = startpage + int(PAGE_BLOCK) - 1                         # 1 + 10 -1           10
        pagecount = count // int(PAGE_SIZE)
        if count % int(PAGE_SIZE) > 0 :
            pagecount += 1
        if endpage > pagecount :
            endpage = pagecount
        pages = range( startpage, endpage+1 )

        lastProducts = Product.objects.order_by("-prodNum")[0:5]
        
        recommends = []
        userId = request.session.get("memid")
        if userId:
            try:
                recos = Recommend.objects.filter(userId=userId).filter(status="gender_age").order_by("-recommendNum").first().prodList
                gender_age_recos = json.loads(recos)
                recommends = [Product.objects.get(prodNum=prodNum) for prodNum in gender_age_recos]
            except (ObjectDoesNotExist, AttributeError):
                recommends = []
        
        userId = request.session.get("memid")
        recentProducts = getRecentProduct(userId)
        
        context={
            "recommends":recommends,
            "lastProducts":lastProducts,
            "brands" : BRAND_CHOICE,
            "count" : count,
            "products" : products,
            "number" : number,
            "pages" : pages,
            "startpage" : startpage,
            "endpage" : endpage,
            "pageblock" : PAGE_BLOCK,
            "pagecount" : pagecount,
            "recentProducts" : recentProducts,
            }
        if userId:
            logger.info("id:"+userId+",,,,pageNum:"+str(pagenum)+",from:"+request.META["HTTP_REFERER"]+",to:"+request.get_full_path())
        return HttpResponse(template.render( context ,request))
    def post(self,request):
        pass

# 상품 브랜드별 리스트 페이지    
class ProductListView(View):
    def get (self,request):
        template = loader.get_template( "productList.html" )
        
        brand = request.GET["brand"]
        
        minamount = request.GET.get("minamount")
        maxamount = request.GET.get("maxamount")
        
        if minamount != None and maxamount != None:
            count = Product.objects.filter(brand=brand).filter(prodPrice__gte=minamount).filter(prodPrice__lte=maxamount).count()
        else:
            count = Product.objects.filter(brand=brand).count()
        
        pagenum = request.GET.get( "pagenum" )
        if not pagenum :
            pagenum = "1"
        pagenum = int( pagenum )
        
        start = ( pagenum - 1 ) * int(PAGE_SIZE)          # ( 5 - 1 ) * 10 + 1     41
        end = start + int(PAGE_SIZE)                      # 41 + 10 - 1            50
        if end > count :
            end = count
        if minamount != None and maxamount != None:
            products = Product.objects.filter(brand=brand).filter(prodPrice__gte=minamount).filter(prodPrice__lte=maxamount).order_by("-prodNum" )[start:end]
        else:
            products = Product.objects.filter(brand=brand).order_by("-prodNum" )[start:end] # jsp와 다르게 슬라이싱해서 씀
        number = count - ( pagenum - 1 ) * int(PAGE_SIZE )
        
        startpage = pagenum // int(PAGE_BLOCK) * int(PAGE_BLOCK) + 1       # 9 // 10 * 10 + 1    1
        if pagenum % int(PAGE_BLOCK) == 0:
            startpage -= int(PAGE_BLOCK)
        endpage = startpage + int(PAGE_BLOCK) - 1                         # 1 + 10 -1           10
        pagecount = count // int(PAGE_SIZE)
        if count % int(PAGE_SIZE) > 0 :
            pagecount += 1
        if endpage > pagecount :
            endpage = pagecount
        pages = range( startpage, endpage+1 )
        
        lastProducts = Product.objects.order_by("-prodNum")[0:5]
        
        userId = request.session.get("memid")
        recentProducts = getRecentProduct(userId)
        
        context = {
            "brands" : BRAND_CHOICE,
            "brand" : brand,
            "count" : count,
            "products" : products,
            "pagenum" : pagenum,
            "number" : number,
            "pages" : pages,
            "startpage" : startpage,
            "endpage" : endpage,
            "pageblock" : PAGE_BLOCK,
            "pagecount" : pagecount,
            "recentProducts" : recentProducts,
            "lastProducts" : lastProducts,
            }
        if userId:
            logger.info("id:"+userId+",,,brand:"+brand+",pageNum:"+str(pagenum)+",from:"+request.META["HTTP_REFERER"]+",to:"+request.get_full_path())
        return HttpResponse(template.render( context, request))
    def post(self,request):
        pass

