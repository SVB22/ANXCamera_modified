.class public abstract Lmiui/animation/IAnimTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/IAnimTarget$MonitorInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EJ:J = 0x7d0L

.field public static final FLAT_ONESHOT:J = 0x1L

.field private static GJ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AJ:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private CJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/animation/property/FloatProperty;",
            "Lmiui/animation/IAnimTarget$MonitorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:J

.field private mId:I

.field private xJ:Lmiui/animation/internal/AnimTask;

.field private yJ:F

.field private zJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiui/animation/IAnimTarget;->GJ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiui/animation/IAnimTarget;->sPropertyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/animation/IAnimTarget;->yJ:F

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->zJ:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->AJ:Landroid/util/ArrayMap;

    sget-object v0, Lmiui/animation/IAnimTarget;->GJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    iput v0, p0, Lmiui/animation/IAnimTarget;->mId:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->CJ:Ljava/util/Map;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v1, v0}, Lmiui/animation/IAnimTarget;->setMinVisibleChange(F[I)Lmiui/animation/IAnimTarget;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    const/high16 v1, 0x3b800000    # 0.00390625f

    invoke-virtual {p0, v1, v0}, Lmiui/animation/IAnimTarget;->setMinVisibleChange(F[I)Lmiui/animation/IAnimTarget;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    const v1, 0x3b03126f    # 0.002f

    invoke-virtual {p0, v1, v0}, Lmiui/animation/IAnimTarget;->setMinVisibleChange(F[I)Lmiui/animation/IAnimTarget;

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x4
        0xe
        0x7
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method private a(Lmiui/animation/property/FloatProperty;)Lmiui/animation/utils/VelocityMonitor;
    .locals 5

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->CJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/IAnimTarget$MonitorInfo;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/animation/IAnimTarget$MonitorInfo;

    invoke-direct {v0}, Lmiui/animation/IAnimTarget$MonitorInfo;-><init>()V

    iget-object p0, p0, Lmiui/animation/IAnimTarget;->CJ:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iget-wide v1, v0, Lmiui/animation/IAnimTarget$MonitorInfo;->lastTime:J

    sub-long v1, p0, v1

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, v0, Lmiui/animation/IAnimTarget$MonitorInfo;->wJ:Lmiui/animation/utils/VelocityMonitor;

    invoke-virtual {v1}, Lmiui/animation/utils/VelocityMonitor;->clear()V

    :cond_1
    iput-wide p0, v0, Lmiui/animation/IAnimTarget$MonitorInfo;->lastTime:J

    iget-object p0, v0, Lmiui/animation/IAnimTarget$MonitorInfo;->wJ:Lmiui/animation/utils/VelocityMonitor;

    return-object p0
.end method


# virtual methods
.method public allowAnimRun()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiui/animation/property/FloatProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiui/animation/property/FloatProperty;"
        }
    .end annotation

    sget-object p0, Lmiui/animation/IAnimTarget;->sPropertyMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/animation/property/FloatProperty;

    if-nez p0, :cond_2

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_1

    const-class p0, Ljava/lang/Integer;

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lmiui/animation/property/ValueProperty;

    invoke-direct {p0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lmiui/animation/property/IntValueProperty;

    invoke-direct {p0, p1}, Lmiui/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    :goto_1
    sget-object p2, Lmiui/animation/IAnimTarget;->sPropertyMap:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnimTask()Lmiui/animation/internal/AnimTask;
    .locals 1

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->xJ:Lmiui/animation/internal/AnimTask;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/animation/internal/AnimTask;

    invoke-direct {v0, p0}, Lmiui/animation/internal/AnimTask;-><init>(Lmiui/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiui/animation/IAnimTarget;->xJ:Lmiui/animation/internal/AnimTask;

    :cond_0
    iget-object p0, p0, Lmiui/animation/IAnimTarget;->xJ:Lmiui/animation/internal/AnimTask;

    return-object p0
.end method

.method public getDefaultMinVisible()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lmiui/animation/IAnimTarget;->mId:I

    return p0
.end method

.method public getIntValue(Lmiui/animation/property/IIntValueProperty;)I
    .locals 0

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lmiui/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0
.end method

.method public getLocationOnScreen([I)V
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    aput p0, p1, v0

    aput p0, p1, p0

    return-void
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .locals 2

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->zJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v1, p1, Lmiui/animation/property/FloatProperty;

    if-eqz v1, :cond_0

    check-cast p1, Lmiui/animation/property/FloatProperty;

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->getType(Lmiui/animation/property/FloatProperty;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->zJ:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_1
    iget p1, p0, Lmiui/animation/IAnimTarget;->yJ:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getDefaultMinVisible()F

    move-result p0

    return p0
.end method

.method public abstract getProperty(I)Lmiui/animation/property/FloatProperty;
.end method

.method public abstract getTargetObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getType(Lmiui/animation/property/FloatProperty;)I
.end method

.method public getValue(I)F
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->getProperty(I)Lmiui/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result p0

    return p0
.end method

.method public getValue(Lmiui/animation/property/FloatProperty;)F
    .locals 0

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lmiui/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method public getVelocity(Lmiui/animation/property/FloatProperty;)D
    .locals 0

    iget-object p0, p0, Lmiui/animation/IAnimTarget;->AJ:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public hasFlags(J)Z
    .locals 2

    iget-wide v0, p0, Lmiui/animation/IAnimTarget;->mFlags:J

    invoke-static {v0, v1, p1, p2}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFrameEnd(Z)V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setDefaultMinVisibleChange(F)Lmiui/animation/IAnimTarget;
    .locals 0

    iput p1, p0, Lmiui/animation/IAnimTarget;->yJ:F

    return-object p0
.end method

.method public setFlags(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/animation/IAnimTarget;->mFlags:J

    return-void
.end method

.method public setIntValue(Lmiui/animation/property/IIntValueProperty;I)V
    .locals 1

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    invoke-interface {p1, p0, p2}, Lmiui/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public varargs setMinVisibleChange(F[I)Lmiui/animation/IAnimTarget;
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    iget-object v3, p0, Lmiui/animation/IAnimTarget;->zJ:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs setMinVisibleChange(F[Ljava/lang/String;)Lmiui/animation/IAnimTarget;
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    new-instance v3, Lmiui/animation/property/ValueProperty;

    invoke-direct {v3, v2}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lmiui/animation/IAnimTarget;->setMinVisibleChange(Ljava/lang/Object;F)Lmiui/animation/IAnimTarget;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setMinVisibleChange(Ljava/lang/Object;F)Lmiui/animation/IAnimTarget;
    .locals 1

    iget-object v0, p0, Lmiui/animation/IAnimTarget;->zJ:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(Lmiui/animation/property/FloatProperty;F)V
    .locals 1

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0, p2}, Lmiui/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_0
    return-void
.end method

.method public setVelocity(Lmiui/animation/property/FloatProperty;D)V
    .locals 2

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/animation/IAnimTarget;->AJ:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public shouldUseIntValue(Lmiui/animation/property/FloatProperty;)Z
    .locals 0

    instance-of p0, p1, Lmiui/animation/property/IIntValueProperty;

    return p0
.end method

.method public trackVelocity(Lmiui/animation/property/FloatProperty;D)V
    .locals 3

    invoke-direct {p0, p1}, Lmiui/animation/IAnimTarget;->a(Lmiui/animation/property/FloatProperty;)Lmiui/animation/utils/VelocityMonitor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    invoke-virtual {v0, v1}, Lmiui/animation/utils/VelocityMonitor;->update([D)V

    invoke-virtual {v0, v2}, Lmiui/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result p2

    float-to-double p2, p2

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    return-void
.end method
