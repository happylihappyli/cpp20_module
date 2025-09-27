import winsound
import time

# 播放提示音并显示提示信息
def notify_user():
    # 播放蜂鸣音
    winsound.Beep(1000, 1000)  # 频率1000Hz，持续1000毫秒
    time.sleep(0.5)
    winsound.Beep(1500, 1000)  # 频率1500Hz，持续1000毫秒
    
    # 显示提示信息
    print("\n" + "="*30)
    print("主人运行完毕，过来看看！")
    print("="*30 + "\n")

if __name__ == "__main__":
    notify_user()