.class public final enum Lmiui/animation/controller/FolmeFont$FontType;
.super Ljava/lang/Enum;
.source "FolmeFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/controller/FolmeFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/animation/controller/FolmeFont$FontType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/animation/controller/FolmeFont$FontType;

.field public static final enum INIT:Lmiui/animation/controller/FolmeFont$FontType;

.field public static final enum TARGET:Lmiui/animation/controller/FolmeFont$FontType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmiui/animation/controller/FolmeFont$FontType;

    const/4 v1, 0x0

    const-string v2, "INIT"

    invoke-direct {v0, v2, v1}, Lmiui/animation/controller/FolmeFont$FontType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/animation/controller/FolmeFont$FontType;->INIT:Lmiui/animation/controller/FolmeFont$FontType;

    new-instance v0, Lmiui/animation/controller/FolmeFont$FontType;

    const/4 v2, 0x1

    const-string v3, "TARGET"

    invoke-direct {v0, v3, v2}, Lmiui/animation/controller/FolmeFont$FontType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/animation/controller/FolmeFont$FontType;->TARGET:Lmiui/animation/controller/FolmeFont$FontType;

    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/animation/controller/FolmeFont$FontType;

    sget-object v3, Lmiui/animation/controller/FolmeFont$FontType;->INIT:Lmiui/animation/controller/FolmeFont$FontType;

    aput-object v3, v0, v1

    sget-object v1, Lmiui/animation/controller/FolmeFont$FontType;->TARGET:Lmiui/animation/controller/FolmeFont$FontType;

    aput-object v1, v0, v2

    sput-object v0, Lmiui/animation/controller/FolmeFont$FontType;->$VALUES:[Lmiui/animation/controller/FolmeFont$FontType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/animation/controller/FolmeFont$FontType;
    .locals 1

    const-class v0, Lmiui/animation/controller/FolmeFont$FontType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/animation/controller/FolmeFont$FontType;

    return-object p0
.end method

.method public static values()[Lmiui/animation/controller/FolmeFont$FontType;
    .locals 1

    sget-object v0, Lmiui/animation/controller/FolmeFont$FontType;->$VALUES:[Lmiui/animation/controller/FolmeFont$FontType;

    invoke-virtual {v0}, [Lmiui/animation/controller/FolmeFont$FontType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/animation/controller/FolmeFont$FontType;

    return-object v0
.end method