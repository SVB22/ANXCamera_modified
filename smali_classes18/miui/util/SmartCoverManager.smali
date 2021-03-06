.class public Lmiui/util/SmartCoverManager;
.super Ljava/lang/Object;
.source "SmartCoverManager.java"


# static fields
.field private static final ACTION_SMART_COVER_GUIDE:Ljava/lang/String; = "miui.intent.action.SMART_COVER_GUIDE"

.field private static final IS_D4:Z

.field private static final LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I = 0x3a98

.field private static final MULTI:Z

.field private static final SETTINGS_PKG:Ljava/lang/String; = "com.android.settings"

.field private static final SMART_COVER_GUIDE_ACTIVITY:Ljava/lang/String; = "com.android.settings.MiuiSmartCoverGuideActivity"

.field private static final SUPPORT_MULTIPLE_SMALL_WIN_COVER:Ljava/lang/String; = "support_multiple_small_win_cover"

.field private static final TAG:Ljava/lang/String; = "SmartCoverManager"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mNeedResetTimeout:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSmartCoverLidOpen:Z

.field private mSmartCoverMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "support_multiple_small_win_cover"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/util/SmartCoverManager;->MULTI:Z

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "oxygen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lmiui/util/SmartCoverManager;->IS_D4:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    return-void
.end method

.method private checkSmartCoverEnable()Z
    .locals 2

    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public static deviceDisableKeysWhenLidClose()Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lmiui/util/SmartCoverManager;->IS_D4:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not disable keys when LidClose."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartCoverManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private enableInSmallWinMode(Z)Z
    .locals 5

    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gt v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget v2, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    const-string v4, "is_small_window"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return v0
.end method

.method private guideSmartCoverSettingIfNeeded(Z)V
    .locals 6

    if-nez p1, :cond_2

    sget-boolean v0, Lmiui/util/SmartCoverManager;->MULTI:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "smart_cover_key"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/SmartCoverManager;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v3, v3}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.SMART_COVER_GUIDE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.MiuiSmartCoverGuideActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private handleLidSwitchChanged(ZZ)V
    .locals 5

    iput-boolean p1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->setScreenOffByLid(Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.SMART_COVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "is_smart_cover_open"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0x9

    const-string v4, "lid_switch_open"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lmiui/util/SmartCoverManager;->updateScreenOffTimeoutIfNeeded(Z)V

    return-void
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setScreenOffByLid(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    :try_start_0
    const-string v1, "sys.keyguard.screen_off_by_lid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set screen off by lid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmartCoverManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private triggerScreenOffTimeout(Z)V
    .locals 4

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_0

    const/16 v1, 0x3a98

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    const-string v2, "screen_off_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p1, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    const/4 v2, -0x2

    const-string v3, "need_reset_screen_off_timeout"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void
.end method

.method private updateScreenOffTimeoutIfNeeded(Z)V
    .locals 4

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x3a98

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lmiui/util/SmartCoverManager;->triggerScreenOffTimeout(Z)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lmiui/util/SmartCoverManager;->triggerScreenOffTimeout(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Smart Cover Mode:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSmartCoverLidOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSmartCoverMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableLidAfterBoot(I)Z
    .locals 8

    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    sget-boolean v0, Lmiui/util/SmartCoverManager;->MULTI:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    iget v3, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    const/4 v4, 0x0

    if-gt v2, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    move v0, v1

    :cond_3
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, -0x2

    const-string v5, "need_reset_screen_off_timeout"

    invoke-static {v1, v5, v4, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const v6, 0x7fffffff

    const-string v7, "screen_off_timeout"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v5, v4, v3}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    :cond_4
    return v2
.end method

.method public getSmartCoverLidOpen()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    return v0
.end method

.method public getSmartCoverMode()I
    .locals 1

    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 1

    iput-object p1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lmiui/util/SmartCoverManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    return-void
.end method

.method public notifyLidSwitchChanged(ZZ)Z
    .locals 2

    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->guideSmartCoverSettingIfNeeded(Z)V

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/util/SmartCoverManager;->handleLidSwitchChanged(ZZ)V

    const/4 v1, 0x1

    return v1
.end method

.method public notifyScreenTurningOn()Z
    .locals 2

    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lmiui/util/SmartCoverManager;->setScreenOffByLid(Z)V

    :cond_0
    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onUserSwitch(I)V
    .locals 1

    iget v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    return-void
.end method
