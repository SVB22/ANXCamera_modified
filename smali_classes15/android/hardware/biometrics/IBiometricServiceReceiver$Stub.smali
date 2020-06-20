.class public abstract Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IBiometricServiceReceiver.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.biometrics.IBiometricServiceReceiver"

.field static final TRANSACTION_onAcquired:I = 0x4

.field static final TRANSACTION_onAuthenticationFailed:I = 0x2

.field static final TRANSACTION_onAuthenticationSucceeded:I = 0x1

.field static final TRANSACTION_onDialogDismissed:I = 0x5

.field static final TRANSACTION_onError:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricServiceReceiver;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->sDefaultImpl:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "onDialogDismissed"

    return-object v0

    :cond_1
    const-string v0, "onAcquired"

    return-object v0

    :cond_2
    const-string/jumbo v0, "onError"

    return-object v0

    :cond_3
    const-string v0, "onAuthenticationFailed"

    return-object v0

    :cond_4
    const-string v0, "onAuthenticationSucceeded"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/biometrics/IBiometricServiceReceiver;)Z
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->sDefaultImpl:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->sDefaultImpl:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiver"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onDialogDismissed(I)V

    return v1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onAcquired(ILjava/lang/String;)V

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onError(ILjava/lang/String;)V

    return v1

    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onAuthenticationFailed()V

    return v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onAuthenticationSucceeded()V

    return v1
.end method