.class public Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "ElasticEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mAmplitudeExp:Lmiui/maml/data/Expression;

.field private mPriod:F

.field private mPriodExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const v0, 0x3ee66667    # 0.45000002f

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const v0, 0x3ee66667    # 0.45000002f

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    iput p1, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    iput p2, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>([Lmiui/maml/data/Expression;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const v0, 0x3ee66667    # 0.45000002f

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitudeExp:Lmiui/maml/data/Expression;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    aget-object v0, p1, v1

    iput-object v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriodExp:Lmiui/maml/data/Expression;

    :cond_1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    iget-object v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitudeExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    :cond_0
    iget-object v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriodExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    :cond_1
    iget v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    div-float v1, p1, v1

    move p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_3

    return v2

    :cond_3
    cmpg-float v1, v0, v2

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v1, v5

    goto :goto_0

    :cond_4
    iget v1, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    float-to-double v5, v1

    div-double/2addr v5, v3

    div-float v1, v2, v0

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v1, v5

    :goto_0
    cmpg-float v5, p1, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    if-gez v5, :cond_5

    const/high16 v5, -0x41000000    # -0.5f

    float-to-double v8, v0

    const/high16 v10, 0x41200000    # 10.0f

    sub-float v2, p1, v2

    move p1, v2

    mul-float/2addr v2, v10

    float-to-double v10, v2

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v8, v6

    sub-float v2, p1, v1

    float-to-double v6, v2

    mul-double/2addr v6, v3

    iget v2, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    float-to-double v2, v2

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v8, v2

    double-to-float v2, v8

    mul-float/2addr v2, v5

    return v2

    :cond_5
    float-to-double v8, v0

    const/high16 v5, -0x3ee00000    # -10.0f

    sub-float v2, p1, v2

    move p1, v2

    mul-float/2addr v2, v5

    float-to-double v10, v2

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v8, v5

    sub-float v2, p1, v1

    float-to-double v5, v2

    mul-double/2addr v5, v3

    iget v2, p0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    float-to-double v2, v2

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v8, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v2

    double-to-float v2, v8

    return v2
.end method
