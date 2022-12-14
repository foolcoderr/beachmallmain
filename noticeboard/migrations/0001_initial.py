# Generated by Django 4.1 on 2022-10-17 02:18

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='NoticeBoard',
            fields=[
                ('noticeNum', models.AutoField(primary_key=True, serialize=False, verbose_name='글번호')),
                ('admin', models.CharField(max_length=30, verbose_name='작성자')),
                ('noticeTitle', models.CharField(max_length=1000, verbose_name='글제목')),
                ('noticeContent', models.TextField(verbose_name='글내용')),
                ('noticeDate', models.DateTimeField(auto_now_add=True, verbose_name='작성일')),
            ],
        ),
    ]
