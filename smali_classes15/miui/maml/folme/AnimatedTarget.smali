.class public Lmiui/maml/folme/AnimatedTarget;
.super Lmiui/animation/IAnimTarget;
.source "AnimatedTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/IAnimTarget<",
        "Lmiui/maml/elements/AnimatedScreenElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATE_TAG_FROM:Ljava/lang/String; = "from"

.field public static final STATE_TAG_SET_TO:Ljava/lang/String; = "setTo"

.field public static final STATE_TAG_TO:Ljava/lang/String; = "to"

.field public static sCreator:Lmiui/animation/ITargetCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/ITargetCreator<",
            "Lmiui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field public static sPropertyMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lmiui/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field public static sPropertyTypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lmiui/animation/property/FloatProperty;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mElementRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->X:Lmiui/maml/folme/AnimatedProperty;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->Y:Lmiui/maml/folme/AnimatedProperty;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->SCALE_X:Lmiui/maml/folme/AnimatedProperty;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->SCALE_Y:Lmiui/maml/folme/AnimatedProperty;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->ALPHA:Lmiui/maml/folme/AnimatedProperty;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->HEIGHT:Lmiui/maml/folme/AnimatedProperty;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->WIDTH:Lmiui/maml/folme/AnimatedProperty;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->ROTATION:Lmiui/maml/folme/AnimatedProperty;

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->ROTATION_X:Lmiui/maml/folme/AnimatedProperty;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->ROTATION_Y:Lmiui/maml/folme/AnimatedProperty;

    const/16 v11, 0xb

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->TINT_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    const/16 v12, 0x3f0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->PIVOT_X:Lmiui/maml/folme/AnimatedProperty;

    const/16 v13, 0x3f1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v1, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->PIVOT_Y:Lmiui/maml/folme/AnimatedProperty;

    const/16 v14, 0x3f2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v1, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->PIVOT_Z:Lmiui/maml/folme/AnimatedProperty;

    const/16 v15, 0x3f3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v1, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->X:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->Y:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->SCALE_X:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->SCALE_Y:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->ALPHA:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->HEIGHT:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->WIDTH:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/folme/AnimatedProperty;->ROTATION:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/folme/AnimatedProperty;->ROTATION_X:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/folme/AnimatedProperty;->ROTATION_Y:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/folme/AnimatedProperty;->TINT_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/folme/AnimatedProperty;->PIVOT_X:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    const/16 v1, 0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/folme/AnimatedProperty;->PIVOT_Y:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/folme/AnimatedProperty;->PIVOT_Z:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmiui/maml/folme/AnimatedTarget$1;

    invoke-direct {v0}, Lmiui/maml/folme/AnimatedTarget$1;-><init>()V

    sput-object v0, Lmiui/maml/folme/AnimatedTarget;->sCreator:Lmiui/animation/ITargetCreator;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    invoke-direct {p0}, Lmiui/animation/IAnimTarget;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/folme/AnimatedTarget;->mElementRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lmiui/maml/folme/AnimatedTarget;->mElementRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public getDefaultMinVisible()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLocationOnScreen([I)V
    .locals 4

    iget-object v0, p0, Lmiui/maml/folme/AnimatedTarget;->mElementRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v3

    float-to-int v3, v3

    aput v3, p1, v1

    invoke-virtual {v0}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v1

    float-to-int v1, v1

    aput v1, p1, v2

    :cond_0
    return-void
.end method

.method public getProperty(I)Lmiui/animation/property/FloatProperty;
    .locals 2

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/property/FloatProperty;

    return-object v0
.end method

.method public bridge synthetic getTargetObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmiui/maml/folme/AnimatedTarget;->getTargetObject()Lmiui/maml/elements/AnimatedScreenElement;

    move-result-object v0

    return-object v0
.end method

.method public getTargetObject()Lmiui/maml/elements/AnimatedScreenElement;
    .locals 1

    iget-object v0, p0, Lmiui/maml/folme/AnimatedTarget;->mElementRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    return-object v0
.end method

.method public getType(Lmiui/animation/property/FloatProperty;)I
    .locals 1

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lmiui/maml/folme/AnimatedTarget;->mElementRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
