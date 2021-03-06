.class public Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;
.super Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleMonitorWaitFields"
.end annotation


# static fields
.field private static final FIELD_MONITOR_ID:Ljava/lang/String; = "monitorId"

.field private static final FIELD_STACK:Ljava/lang/String; = "stack"


# instance fields
.field public monitorId:J

.field public stackTrace:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->monitorId:J

    return-void
.end method

.method public fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->stackTrace:[Ljava/lang/String;

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->monitorId:J

    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->stackTrace:[Ljava/lang/String;

    iget-object v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->stackTrace:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    iput-object v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->stackTrace:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_0
    const-string/jumbo v0, "monitorId"

    iget-wide v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->monitorId:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "stack"

    iget-object v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->monitorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    return-void
.end method
