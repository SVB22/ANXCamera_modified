.class Landroid/os/connectivity/GpsBatteryStats$1;
.super Ljava/lang/Object;
.source "GpsBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/connectivity/GpsBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/connectivity/GpsBatteryStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/GpsBatteryStats;
    .locals 2

    new-instance v0, Landroid/os/connectivity/GpsBatteryStats;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/connectivity/GpsBatteryStats;-><init>(Landroid/os/Parcel;Landroid/os/connectivity/GpsBatteryStats$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/connectivity/GpsBatteryStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/GpsBatteryStats;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/connectivity/GpsBatteryStats;
    .locals 1

    new-array v0, p1, [Landroid/os/connectivity/GpsBatteryStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/connectivity/GpsBatteryStats$1;->newArray(I)[Landroid/os/connectivity/GpsBatteryStats;

    move-result-object p1

    return-object p1
.end method
