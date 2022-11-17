# Generated by Django 4.1 on 2022-10-17 02:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('order', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Refund',
            fields=[
                ('refundProdNum', models.BigAutoField(primary_key=True, serialize=False, verbose_name='교환반품등록번호')),
                ('userId', models.CharField(max_length=50, verbose_name='주문자 아이디')),
                ('refund_exchangecheck', models.CharField(max_length=10, verbose_name='반품/교환선택')),
                ('reason', models.TextField(verbose_name='반품/교환내용')),
                ('refundDate', models.DateTimeField(auto_now_add=True, verbose_name='작성일')),
                ('status', models.CharField(default='n', max_length=1, verbose_name='반품/교환상태')),
                ('refundPhoto', models.ImageField(upload_to='refundphotos')),
                ('orderDetailNum', models.ForeignKey(db_column='orderDetailNum', on_delete=django.db.models.deletion.CASCADE, to='order.orderdetail')),
            ],
        ),
    ]
