.class public Lcom/android/internal/os/UidAppCameraPowerCalculator;
.super Ljava/lang/Object;
.source "UidAppCameraPowerCalculator.java"


# instance fields
.field private final mCameraPowerOnAvg:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    const-string v1, "camera.avg"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/UidAppCameraPowerCalculator;->mCameraPowerOnAvg:D

    return-void
.end method


# virtual methods
.method public calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V
    .locals 7

    invoke-virtual {p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    long-to-double v3, v1

    iget-wide v5, p0, Lcom/android/internal/os/UidAppCameraPowerCalculator;->mCameraPowerOnAvg:D

    mul-double/2addr v3, v5

    const-wide v5, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v5

    iput-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    :goto_0
    return-void
.end method
