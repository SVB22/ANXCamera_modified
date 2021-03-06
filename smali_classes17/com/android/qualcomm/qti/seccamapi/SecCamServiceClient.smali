.class public Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;
.super Landroid/os/Handler;
.source "SecCamServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;,
        Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;
    }
.end annotation


# static fields
.field public static final DESTINATION_MLVM:Ljava/lang/Integer;

.field public static final DESTINATION_QTEE:Ljava/lang/Integer;

.field public static final HAL1:Ljava/lang/Integer;

.field public static final HAL3:Ljava/lang/Integer;

.field private static final LOG_TAG:Ljava/lang/String; = "SECCAM-SERVICE-CLIENT"

.field private static final MSG_DATA_CAMERAID:Ljava/lang/String; = "cameraId"

.field private static final MSG_DATA_CSURFACEID:Ljava/lang/String; = "cSurfaceId"

.field private static final MSG_DATA_FORMAT:Ljava/lang/String; = "format"

.field private static final MSG_DATA_FRAMENUMBER:Ljava/lang/String; = "frameNumber"

.field private static final MSG_DATA_HEIGHT:Ljava/lang/String; = "height"

.field private static final MSG_DATA_NUMOFBUFFERS:Ljava/lang/String; = "numOfBuffers"

.field private static final MSG_DATA_PSURFACE:Ljava/lang/String; = "PSURFACE"

.field private static final MSG_DATA_RESULT:Ljava/lang/String; = "result"

.field private static final MSG_DATA_RETURNPARAMS:Ljava/lang/String; = "returnParams"

.field private static final MSG_DATA_RETURNPARAMSSIZE:Ljava/lang/String; = "returnParamsSize"

.field private static final MSG_DATA_ROTATION:Ljava/lang/String; = "rotation"

.field private static final MSG_DATA_STRIDE:Ljava/lang/String; = "stride"

.field private static final MSG_DATA_SURFACEID:Ljava/lang/String; = "surfaceId"

.field private static final MSG_DATA_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final MSG_DATA_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field private static final MSG_DATA_WIDTH:Ljava/lang/String; = "width"

.field private static final MSG_ENABLE_FRAME_CALLBACK:I = 0x3ed

.field private static final MSG_FRAME_CALLBACK:I = 0x3ee

.field private static final MSG_GET_CAPTURE_SURFACE:I = 0x3e9

.field private static final MSG_RELEASE_CAPTURE_SURFACE:I = 0x3eb

.field private static final MSG_RELEASE_PREVIEW_SURFACE:I = 0x3ec

.field private static final MSG_REPLAY_TIMEOUT:I = 0x2

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3ea

.field private static final MSG_SEVICE_VERSION:I = 0x3e8

.field private static final SERVICE_NAME:Ljava/lang/String; = "SecCamService"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qti.seccamservice"

.field private static final SERVICE_READY_TIMEOUT:I = 0x2

.field private static handlerThread_:Landroid/os/HandlerThread;

.field private static instance_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;


# instance fields
.field private final accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

.field private activityMessenger_:Landroid/os/Messenger;

.field private bundServiceMessenger_:Landroid/os/Messenger;

.field private callback_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

.field private captureSurface_:Landroid/view/Surface;

.field private context_:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private frameCallbacks_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

.field private result_:Z

.field private serviceConnected_:Z

.field private serviceConnecting_:Z

.field private serviceConnection_:Landroid/content/ServiceConnection;

.field private serviceDisonnecting_:Z

.field private serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

.field private serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

.field private surfaceId_:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->HAL1:Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->HAL3:Ljava/lang/Integer;

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->DESTINATION_QTEE:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->DESTINATION_MLVM:Ljava/lang/Integer;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->instance_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->handlerThread_:Landroid/os/HandlerThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->handlerThread_:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->callback_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnecting_:Z

    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceDisonnecting_:Z

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->frameCallbacks_:Ljava/util/HashMap;

    new-instance v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    invoke-direct {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;-><init>()V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    new-instance v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;

    invoke-direct {v0, p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;-><init>(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnection_:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceDisonnecting_:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->callback_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnecting_:Z

    return p1
.end method

.method public static getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;
    .locals 3

    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->instance_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, -0x2

    const-string v2, "SecCamServiceClientThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->handlerThread_:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->handlerThread_:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-direct {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;-><init>()V

    sput-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->instance_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    :cond_0
    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->instance_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    return-object v0
.end method

.method public static getMinSupportedHAL()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getMinSupportedHAL(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getMinSupportedHAL(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5

    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->HAL3:Ljava/lang/Integer;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Landroid/hardware/Camera;->openLegacy(II)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string/jumbo v3, "secure-mode"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->HAL1:Ljava/lang/Integer;

    move-object v0, v4

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinSupportedHAL - HAL1 probe failed (Camera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "),"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SECCAM-SERVICE-CLIENT"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method


# virtual methods
.method public dispatchVendorCommand(ILandroid/os/Bundle;)V
    .locals 7

    const-string v0, "dispatchVendorCommand - ERROR: "

    const-string v1, "SECCAM-SERVICE-CLIENT"

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send MSG: dispatchVendorCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput p1, v2, Landroid/os/Message;->what:I

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "dispatchVendorCommand - ERROR: timeout!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public enableFrameCallback(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;I)Z
    .locals 8

    const-string v0, "enableFrameCallback - ERROR: "

    const-string v1, "SECCAM-SERVICE-CLIENT"

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    :try_start_0
    const-string v2, "Send MSG: enableFrameCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "timeout"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "cSurfaceId"

    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurfaceId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "returnParamsSize"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x3ed

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "enableFrameCallback - ERROR: timeout!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableFrameCallback - Register callback, surfaceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurfaceId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->frameCallbacks_:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurfaceId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableFrameCallback return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return v0
.end method

.method public getSecureCameraSurface(IIIII)Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "getSecureCameraSurface - ERROR: "

    const-string v3, "SECCAM-SERVICE-CLIENT"

    iget-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "Send MSG: getSecureCameraSurface"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    const-string v0, "cameraId"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    move/from16 v6, p1

    :try_start_1
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    move/from16 v7, p2

    :try_start_2
    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "height"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    move/from16 v8, p3

    :try_start_3
    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "format"
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v9, p4

    :try_start_4
    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "numOfBuffers"
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v10, p5

    :try_start_5
    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    move-object v11, v0

    const/16 v0, 0x3e9

    iput v0, v11, Landroid/os/Message;->what:I

    invoke-virtual {v11, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v0, v11, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v12, 0x1

    invoke-direct {v0, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iput-object v4, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->surfaceId_:Ljava/lang/Long;

    iget-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v0, v11}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v14, 0x2

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v14, v15, v12}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getSecureCameraSurface - ERROR: tmeout!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    iget-object v12, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    iget-object v13, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->surfaceId_:Ljava/lang/Long;

    invoke-direct {v0, v12, v13}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;-><init>(Landroid/view/Surface;Ljava/lang/Long;)V

    iput-object v4, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->surfaceId_:Ljava/lang/Long;

    iget-object v12, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_0
    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    move/from16 v6, p1

    :goto_1
    move/from16 v7, p2

    :goto_2
    move/from16 v8, p3

    :goto_3
    move/from16 v9, p4

    :goto_4
    move/from16 v10, p5

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :cond_1
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    :goto_6
    iget-object v0, v1, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4
.end method

.method public getServiceVersion()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;
    .locals 7

    const-string v0, "SECCAM-SERVICE-CLIENT"

    iget-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "Send MSG: getServiceVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e8

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "getServiceVersion - ERROR: timeout!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getServiceVersion - ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-string v0, "SECCAM-SERVICE-CLIENT"

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "surfaceId"

    const-string/jumbo v3, "result"

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceVendorClient;

    invoke-direct {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceVendorClient;-><init>()V

    invoke-static {p1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceVendorClient;->handleVendorMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;

    invoke-direct {v4}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v2, "frameNumber"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->frameNumber_:J

    const-string/jumbo v2, "timeStamp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->timeStamp_:J

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->width_:I

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->height_:I

    const-string/jumbo v2, "stride"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->stride_:I

    const-string v2, "format"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->format_:I

    const-string/jumbo v2, "returnParams"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage - MSG_FRAME_CALLBACK: SurfaceId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " FrameId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v4, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->frameNumber_:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->frameCallbacks_:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, v4, v2}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;->onSecureFrameAvalable(Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;[B)V

    :cond_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage - 1005:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "SURFACE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v4, v3, Landroid/view/Surface;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/view/Surface;

    iput-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->surfaceId_:Ljava/lang/Long;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage - MSG_GET_CAPTURE_SURFACE:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->captureSurface_:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", surfaceId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->surfaceId_:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string/jumbo v3, "svc_ver_maj"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->serviceVerMaj_:I

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string/jumbo v3, "svc_ver_min"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->serviceVerMin_:I

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string v3, "jni_ver_maj"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->jniVerMaj_:I

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string v3, "jni_ver_min"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->jniVerMin_:I

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string/jumbo v3, "ta_ver_maj"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->taVerMaj_:I

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    const-string/jumbo v3, "ta_ver_min"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->taVerMin_:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage - MSG_SEVICE_VERSION:SVC: v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v3, v3, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->serviceVerMaj_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v4, v4, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->serviceVerMin_:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", JNI: v"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v4, v4, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->jniVerMaj_:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v4, v4, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->jniVerMin_:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", TA: v"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v4, v4, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->taVerMaj_:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceVersion_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;

    iget v3, v3, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ServiceVersion;->taVerMin_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSeviceConnected()Z
    .locals 6

    const-string v0, "SECCAM-SERVICE-CLIENT"

    iget-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnecting_:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceDisonnecting_:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "isSeviceConnected - ERROR: tmeout!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    nop

    :cond_2
    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    return v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSeviceConnected - ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v1
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.qti.seccamservice.SecCamService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.qualcomm.qti.seccamservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceDisonnecting_:Z

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-string v1, "SECCAM-SERVICE-CLIENT"

    const-string/jumbo v2, "unbindService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->context_:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnection_:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->context_:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->callback_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public releaseCaptureSurface(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)Z
    .locals 8

    const-string/jumbo v0, "releaseCaptureSurface - ERROR: "

    const-string v1, "SECCAM-SERVICE-CLIENT"

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "Send MSG: releaseCaptureSurface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "cSurfaceId"

    invoke-virtual {p1}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurfaceId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x3eb

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "releaseCaptureSurface - ERROR: timeout!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "releaseCaptureSurface - return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return v0
.end method

.method public releasePreviewSurface(Landroid/view/Surface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;)Z
    .locals 8

    const-string/jumbo v0, "releasePreviewSurface - ERROR: "

    const-string v1, "SECCAM-SERVICE-CLIENT"

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v2, "Send MSG: releasePreviewSurface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "PSURFACE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "cSurfaceId"

    invoke-virtual {p2}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;->getSurfaceId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x3ec

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "releasePreviewSurface - ERROR: timeout!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return v0
.end method

.method public setSecurePreviewSurface(Landroid/view/Surface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface;IIIII)Z
    .locals 8

    const-string/jumbo v0, "setSecurePreviewSurface - ERROR: "

    const-string v1, "SECCAM-SERVICE-CLIENT"

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-virtual {p0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->isSeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    const-string v2, "Send MSG: setSecurePreviewSurface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "PSURFACE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "cSurfaceId"

    invoke-virtual {p2}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->getCaptureSurfaceId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "width"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "height"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "format"

    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "rotation"

    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "numOfBuffers"

    invoke-virtual {v2, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x3ea

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v5, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z

    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->bundServiceMessenger_:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "setSecurePreviewSurface - ERROR: timeout!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->result_:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;)Z
    .locals 7

    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->DESTINATION_QTEE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;I)Z
    .locals 7

    sget-object v0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->DESTINATION_QTEE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnected_:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnecting_:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->frameCallbacks_:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->context_:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->callback_:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->activityMessenger_:Landroid/os/Messenger;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.qualcomm.qti.seccamservice.SecCamService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.qualcomm.qti.seccamservice"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SECCAM-SERVICE-CLIENT"

    if-eqz p3, :cond_0

    const-string v3, "TANAME"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "TABUFFERSIZE"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "DESTINATION"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start service, TA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", DESTINATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "Start service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->context_:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->serviceConnection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1
.end method
