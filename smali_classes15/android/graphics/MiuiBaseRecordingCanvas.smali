.class public Landroid/graphics/MiuiBaseRecordingCanvas;
.super Landroid/graphics/BaseRecordingCanvas;
.source "MiuiBaseRecordingCanvas.java"


# instance fields
.field private mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;


# direct methods
.method public constructor <init>(JLandroid/graphics/MiuiRecordingCanvas;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/BaseRecordingCanvas;-><init>(J)V

    iput-object p3, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    return-void
.end method


# virtual methods
.method public disableZ()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiRecordingCanvas;->disableZ()V

    return-void
.end method

.method public enableZ()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiRecordingCanvas;->enableZ()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiRecordingCanvas;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiRecordingCanvas;->getMaximumBitmapHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiRecordingCanvas;->getMaximumBitmapWidth()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiRecordingCanvas;->getWidth()I

    move-result v0

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiRecordingCanvas;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public isHwBitmapsInSwModeEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiRecordingCanvas;->isHwBitmapsInSwModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiRecordingCanvas;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0, p1}, Landroid/graphics/MiuiRecordingCanvas;->isRecordingFor(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onHwBitmapInSwMode()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiRecordingCanvas;->onHwBitmapInSwMode()V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0, p1}, Landroid/graphics/MiuiRecordingCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setDensity(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0, p1}, Landroid/graphics/MiuiRecordingCanvas;->setDensity(I)V

    return-void
.end method

.method public setHwBitmapsInSwModeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0, p1}, Landroid/graphics/MiuiRecordingCanvas;->setHwBitmapsInSwModeEnabled(Z)V

    return-void
.end method

.method protected throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/MiuiBaseRecordingCanvas;->mRecordingCanvas:Landroid/graphics/MiuiRecordingCanvas;

    invoke-virtual {v0, p1}, Landroid/graphics/MiuiRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    return-void
.end method
