.class Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;
.super Landroid/os/AsyncTask;
.source "IFAAFaceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeccamStopTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;


# direct methods
.method private constructor <init>(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;-><init>(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "doInBackground"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$700(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v1, "seccam closeCamera+++"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$800(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$800(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->stop()Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$802(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    goto :goto_0

    :cond_0
    const-string v1, "Secure camera already stopped.. ignoring stoptask"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "seccam closeCamera---"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$900(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$700(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    nop

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock closeCamera."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$900(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->this$0:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->access$700(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
