.class public final enum Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
.super Ljava/lang/Enum;
.source "YellowPageImgLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageImgLoader$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

.field public static final enum JPG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

.field public static final enum PNG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    const/4 v1, 0x0

    const-string v2, "JPG"

    invoke-direct {v0, v2, v1}, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->JPG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    new-instance v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    const/4 v2, 0x1

    const-string v3, "PNG"

    invoke-direct {v0, v3, v2}, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->PNG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    sget-object v3, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->JPG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    aput-object v3, v0, v1

    sget-object v1, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->PNG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    aput-object v1, v0, v2

    sput-object v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->$VALUES:[Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
    .locals 1

    const-class v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    return-object v0
.end method

.method public static values()[Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
    .locals 1

    sget-object v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->$VALUES:[Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    invoke-virtual {v0}, [Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    return-object v0
.end method
