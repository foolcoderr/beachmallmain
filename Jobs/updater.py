
from apscheduler.schedulers.background import BackgroundScheduler
from Jobs.jobs import schedule_api
def start():
    scheduler = BackgroundScheduler()
    scheduler.add_job(schedule_api, "cron", hour=9, minute=56)
    scheduler.start()