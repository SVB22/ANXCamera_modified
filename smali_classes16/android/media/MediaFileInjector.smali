.class Landroid/media/MediaFileInjector;
.super Ljava/lang/Object;
.source "MediaFileInjector.java"


# static fields
.field public static final FILE_TYPE_3G2B:I = 0x7d6

.field public static final FILE_TYPE_F4V:I = 0x7d5

.field public static final FILE_TYPE_FLV:I = 0x7d0

.field public static final FILE_TYPE_MOV:I = 0x7d3

.field public static final FILE_TYPE_RM:I = 0x7d1

.field public static final FILE_TYPE_RMVB:I = 0x7d2

.field public static final FILE_TYPE_VOB:I = 0x7d4

.field private static final FIRST_MIUI_VIDEO_FILE_TYPE:I = 0x7d0

.field private static final LAST_MIUI_VIDEO_FILE_TYPE:I = 0x7d6

.field public static final MIUI_FILE_TYPE_BASE:I = 0x7d0


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addMiuiFileType()V
    .locals 3

    const-string v0, "FLV"

    const/16 v1, 0x7d0

    const-string/jumbo v2, "video/x-flv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "video/x-pn-realvideo"

    const-string v1, "RM"

    const/16 v2, 0x7d1

    invoke-static {v1, v2, v0}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "RMVB"

    const/16 v2, 0x7d2

    invoke-static {v1, v2, v0}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MOV"

    const/16 v1, 0x7d3

    const-string/jumbo v2, "video/quicktime"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "VOB"

    const/16 v1, 0x7d4

    const-string/jumbo v2, "video/x-ms-vob"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "F4V"

    const/16 v1, 0x7d5

    const-string/jumbo v2, "video/mp4"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3G2B"

    const/16 v1, 0x7d6

    const-string/jumbo v2, "video/3gpp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static isMIUIVideoFileType(I)Z
    .locals 1

    const/16 v0, 0x7d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7d6

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
