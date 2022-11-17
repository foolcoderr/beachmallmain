# Generated by Django 4.1 on 2022-10-17 02:18

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Product',
            fields=[
                ('prodNum', models.BigAutoField(primary_key=True, serialize=False, verbose_name='상품번호')),
                ('prodName', models.CharField(max_length=1000, verbose_name='상품명')),
                ('prodStock', models.IntegerField(verbose_name='재고')),
                ('prodPrice', models.BigIntegerField(verbose_name='가격')),
                ('prodInfo', models.TextField(max_length=30000, verbose_name='상품 설명')),
                ('prodThumbnail', models.ImageField(upload_to='products', verbose_name='썸네일')),
                ('prodImage1', models.ImageField(upload_to='products', verbose_name='이미지1')),
                ('prodImage2', models.ImageField(upload_to='products', verbose_name='이미지2')),
                ('searchCount', models.BigIntegerField(verbose_name='조회수')),
                ('status', models.SmallIntegerField(verbose_name='상태')),
                ('brand', models.CharField(choices=[('Arena', 'Arena'), ('Vendis', 'Vendis'), ('Military', 'Military'), ('Tornado Sports', 'Tornado Sports'), ('Seafolly', 'Seafolly'), ('Speedo', 'Speedo'), ('Arise', 'Arise'), ('Hoog', 'Hoog'), ('Rash pl.', 'Rash pl.'), ('Buffalo', 'Buffalo'), ('U.seven', 'U.seven'), ('Food', 'Food')], max_length=100, verbose_name='브랜드')),
            ],
        ),
    ]