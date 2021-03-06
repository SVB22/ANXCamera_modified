.class public abstract Lcom/miui/whetstone/WhetstoneCloudControlManager;
.super Ljava/lang/Object;
.source "WhetstoneCloudControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;
    }
.end annotation


# static fields
.field public static REGISTER_ALREADY:I = 0x0

.field public static REGISTER_FAIL:I = 0x0

.field public static REGISTER_SUCCESS:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field public static UNREGISTER_FAIL:I

.field public static UNREGISTER_SUCCESS:I

.field private static ws:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->getService()Lcom/miui/whetstone/IWhetstone;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v0, -0x1

    sput v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    const/4 v1, 0x0

    sput v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_ALREADY:I

    const/4 v1, 0x1

    sput v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_SUCCESS:I

    sput v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_FAIL:I

    sput v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_SUCCESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/whetstone/IWhetstone;)Lcom/miui/whetstone/IWhetstone;
    .locals 0

    sput-object p0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object p0
.end method

.method private static checkService()V
    .locals 0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->getService()Lcom/miui/whetstone/IWhetstone;

    return-void
.end method

.method private static getService()Lcom/miui/whetstone/IWhetstone;
    .locals 3

    sget-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v0, :cond_1

    const-string/jumbo v0, "miui.whetstone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;

    sget-object v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    sget-object v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object v0
.end method

.method public static registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I
    .locals 2

    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    sget v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    sget-object v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Lcom/miui/whetstone/CloudControlInfo;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    sget v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    sget-object v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I
    .locals 2

    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    sget v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_FAIL:I

    sget-object v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method
