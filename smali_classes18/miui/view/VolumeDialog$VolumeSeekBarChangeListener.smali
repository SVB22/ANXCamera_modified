.class final Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method private constructor <init>(Lmiui/view/VolumeDialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lmiui/view/VolumeDialog;)V

    return-void
.end method

.method private getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;
    .locals 1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lmiui/view/VolumeDialog$VolumeRow;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$2100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v1

    invoke-static {v1}, Lmiui/view/VolumeDialog$StreamState;->access$4600(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$2100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v1

    invoke-static {v1}, Lmiui/view/VolumeDialog$StreamState;->access$4600(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    if-ge p2, v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    invoke-static {p1, p2}, Lmiui/view/VolumeDialog;->access$4700(Landroid/widget/SeekBar;I)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmiui/view/VolumeDialog$VolumeRow;->access$2902(Lmiui/view/VolumeDialog$VolumeRow;J)J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VolumeBar:onProgressChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VolumeDialog"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->access$4800(Lmiui/view/VolumeDialog;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v3

    const/high16 v4, 0x100000

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lmiui/view/VolumeDialog;->access$4900()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$800(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v1, v1, Lmiui/view/VolumeDialog$VolumeIconRes;->selectedIconRes:I

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1402(Lmiui/view/VolumeDialog$VolumeRow;I)I

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1400(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2802(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->getVolumeRow(Landroid/widget/SeekBar;)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2802(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$2902(Lmiui/view/VolumeDialog$VolumeRow;J)J

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {p1, v1}, Lmiui/view/VolumeDialog;->access$4700(Landroid/widget/SeekBar;I)I

    move-result v1

    iget-object v2, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->access$300(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v2

    iget-object v3, p0, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$300(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lmiui/view/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
