.class public final enum Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;
.super Ljava/lang/Enum;
.source "PressureStateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/spc/PressureStateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcCleanerSettingFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

.field public static final enum ENABLED_MEMORY_RESERVE:Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

.field public static final enum ENABLED_SPEED_TEST_PROTECT:Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    const/4 v1, 0x0

    const-string v2, "ENABLED_SPEED_TEST_PROTECT"

    invoke-direct {v0, v2, v1}, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;->ENABLED_SPEED_TEST_PROTECT:Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    new-instance v0, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    const/4 v2, 0x1

    const-string v3, "ENABLED_MEMORY_RESERVE"

    invoke-direct {v0, v3, v2}, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;->ENABLED_MEMORY_RESERVE:Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    sget-object v3, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;->ENABLED_SPEED_TEST_PROTECT:Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    aput-object v3, v0, v1

    sget-object v1, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;->ENABLED_MEMORY_RESERVE:Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;->$VALUES:[Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

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

.method public static valueOf(Ljava/lang/String;)Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;
    .locals 1

    const-class v0, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    return-object v0
.end method

.method public static values()[Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;
    .locals 1

    sget-object v0, Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;->$VALUES:[Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    invoke-virtual {v0}, [Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/spc/PressureStateSettings$ProcCleanerSettingFlags;

    return-object v0
.end method
