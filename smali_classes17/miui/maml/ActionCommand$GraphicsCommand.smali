.class Lmiui/maml/ActionCommand$GraphicsCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GraphicsCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "GraphicsCommand"


# instance fields
.field private mColorArrayNameExp:Lmiui/maml/data/Expression;

.field private mColorExp:Lmiui/maml/data/Expression;

.field private mColorParsers:[Lmiui/maml/util/ColorParser;

.field private mColors:[I

.field private mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field private mCurrentColorArrayName:Ljava/lang/String;

.field private mCurrentStopArrayName:Ljava/lang/String;

.field private mIsParamsValid:Z

.field private mIsStopsValid:Z

.field private mParamExps:[Lmiui/maml/data/Expression;

.field private mStopArrayNameExp:Lmiui/maml/data/Expression;

.field private mStopExps:[Lmiui/maml/data/Expression;

.field private mStops:[F


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p2}, Lmiui/maml/ActionCommand$GraphicsCommand;->checkExps(Lorg/w3c/dom/Element;)V

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "colorArrayNameExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorArrayNameExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "stopArrayNameExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStopArrayNameExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "colorExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorExp:Lmiui/maml/data/Expression;

    invoke-direct {p0, p2}, Lmiui/maml/ActionCommand$GraphicsCommand;->parseCommand(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private beginFill(Lmiui/maml/elements/GraphicsElement;)V
    .locals 3

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lmiui/maml/util/ColorParser;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-long v1, v1

    long-to-int v1, v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Lmiui/maml/elements/GraphicsElement;->beginFill(I)V

    return-void
.end method

.method private checkExps(Lorg/w3c/dom/Element;)V
    .locals 7

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "paramsExp"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->isExpressionsValid([Lmiui/maml/data/Expression;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "stopsExp"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lmiui/maml/data/Expression;

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->isExpressionsValid([Lmiui/maml/data/Expression;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsStopsValid:Z

    const-string v0, "colors"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v2, v1

    new-array v2, v2, [Lmiui/maml/util/ColorParser;

    iput-object v2, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lmiui/maml/util/ColorParser;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lmiui/maml/util/ColorParser;

    new-instance v4, Lmiui/maml/util/ColorParser;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-direct {v4, v5, v6}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createGradientBox(Lmiui/maml/elements/GraphicsElement;)V
    .locals 11

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v9

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v10

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, v0

    move v5, v1

    move v6, v9

    move v7, v10

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lmiui/maml/elements/GraphicsElement;->createOrUpdateGradientBox(FFFFLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private cubicCurveTo(Lmiui/maml/elements/GraphicsElement;)V
    .locals 13

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v10

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v11

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v12

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v2

    move-object v3, p1

    move v4, v0

    move v5, v1

    move v6, v10

    move v7, v11

    move v8, v12

    move v9, v2

    invoke-virtual/range {v3 .. v9}, Lmiui/maml/elements/GraphicsElement;->cubicCurveTo(FFFFFF)V

    :cond_0
    return-void
.end method

.method private curveTo(Lmiui/maml/elements/GraphicsElement;)V
    .locals 6

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-direct {p0, v2}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v2

    invoke-virtual {p1, v0, v1, v3, v2}, Lmiui/maml/elements/GraphicsElement;->curveTo(FFFF)V

    :cond_0
    return-void
.end method

.method private drawCircle(Lmiui/maml/elements/GraphicsElement;)V
    .locals 5

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lmiui/maml/elements/GraphicsElement;->drawCircle(FFF)V

    :cond_0
    return-void
.end method

.method private drawEllipse(Lmiui/maml/elements/GraphicsElement;)V
    .locals 6

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-direct {p0, v2}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v2

    invoke-virtual {p1, v0, v1, v3, v2}, Lmiui/maml/elements/GraphicsElement;->drawEllipse(FFFF)V

    :cond_0
    return-void
.end method

.method private drawRect(Lmiui/maml/elements/GraphicsElement;)V
    .locals 6

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-direct {p0, v2}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v2

    invoke-virtual {p1, v0, v1, v3, v2}, Lmiui/maml/elements/GraphicsElement;->drawRect(FFFF)V

    :cond_0
    return-void
.end method

.method private drawRoundRect(Lmiui/maml/elements/GraphicsElement;)V
    .locals 12

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v10

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v11

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {p0, v2}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v4, v3

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, v3}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v3

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    move-object v3, p1

    move v4, v0

    move v5, v1

    move v6, v10

    move v7, v11

    move v8, v2

    invoke-virtual/range {v3 .. v9}, Lmiui/maml/elements/GraphicsElement;->drawRoundRect(FFFFFF)V

    :cond_1
    return-void
.end method

.method private lineStyle(Lmiui/maml/elements/GraphicsElement;)V
    .locals 9

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v0, v0

    if-lez v0, :cond_5

    const/high16 v0, -0x1000000

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorExp:Lmiui/maml/data/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-long v3, v3

    long-to-int v0, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lmiui/maml/util/ColorParser;

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v3, v3

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v3, v3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v4, v3

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    aget-object v2, v3, v5

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    :cond_4
    int-to-float v8, v2

    move-object v3, p1

    move v4, v1

    move v5, v0

    invoke-virtual/range {v3 .. v8}, Lmiui/maml/elements/GraphicsElement;->lineStyle(FIIIF)V

    :cond_5
    return-void
.end method

.method private lineTo(Lmiui/maml/elements/GraphicsElement;)V
    .locals 3

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lmiui/maml/elements/GraphicsElement;->lineTo(FF)V

    :cond_0
    return-void
.end method

.method private moveTo(Lmiui/maml/elements/GraphicsElement;)V
    .locals 3

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lmiui/maml/elements/GraphicsElement;->moveTo(FF)V

    :cond_0
    return-void
.end method

.method private parseColor()V
    .locals 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorArrayNameExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->parseColorByArrayName()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lmiui/maml/util/ColorParser;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->parseColorByParsers()V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseColorByArrayName()V
    .locals 6

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorArrayNameExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCurrentColorArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCurrentColorArrayName:Ljava/lang/String;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    invoke-virtual {v1}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, [I

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, [I

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    move-object v2, v3

    check-cast v2, [I

    iput-object v2, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    :goto_0
    goto :goto_1

    :cond_1
    iput-object v2, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    :cond_2
    :goto_1
    return-void
.end method

.method private parseColorByParsers()V
    .locals 3

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lmiui/maml/util/ColorParser;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lmiui/maml/util/ColorParser;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private parseCommand(Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "command"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "drawEllipse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "beginGradientFill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "curveTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "cubicCurveTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "drawRoundRect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_5
    const-string v1, "createGradientBox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "lineGradientStyle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_7
    const-string v1, "drawCircle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "drawRect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_9
    const-string/jumbo v1, "moveTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_a
    const-string v1, "beginFill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_b
    const-string v1, "lineTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_c
    const-string/jumbo v1, "setRenderListener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_d
    const-string v1, "lineStyle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_0
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_1
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_2
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_3
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_4
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_5
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_6
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_7
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_8
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_9
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_a
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_b
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_c
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    goto :goto_2

    :pswitch_d
    sget-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bb6a9e3 -> :sswitch_d
        -0x67c75694 -> :sswitch_c
        -0x41b97271 -> :sswitch_b
        -0x3ff89a34 -> :sswitch_a
        -0x3fac69d4 -> :sswitch_9
        -0x314a46b8 -> :sswitch_8
        -0x212d2ccc -> :sswitch_7
        0x1a040cd -> :sswitch_6
        0x4c651df -> :sswitch_5
        0x839a7ae -> :sswitch_4
        0x2ce1f920 -> :sswitch_3
        0x432d8bca -> :sswitch_2
        0x4e35601c -> :sswitch_1
        0x6a20d1fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseStop()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStopArrayNameExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->parseStopByArrayName()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsStopsValid:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->parseStopByExp()V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseStopByArrayName()V
    .locals 6

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStopArrayNameExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCurrentStopArrayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCurrentStopArrayName:Ljava/lang/String;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    invoke-virtual {v1}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, [F

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, [F

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    move-object v2, v3

    check-cast v2, [F

    iput-object v2, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    :goto_0
    goto :goto_1

    :cond_1
    iput-object v2, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    :cond_2
    :goto_1
    return-void
.end method

.method private parseStopByExp()V
    .locals 5

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lmiui/maml/data/Expression;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lmiui/maml/data/Expression;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scale(F)F
    .locals 1

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method private setRenderListener(Lmiui/maml/elements/GraphicsElement;)V
    .locals 3

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lmiui/maml/elements/FunctionElement;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lmiui/maml/elements/FunctionElement;

    invoke-virtual {p1, v2}, Lmiui/maml/elements/GraphicsElement;->setRenderListener(Lmiui/maml/elements/FunctionElement;)V

    :cond_0
    return-void
.end method

.method private setShader(Lmiui/maml/elements/GraphicsElement;)V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v1, v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->parseColor()V

    invoke-direct/range {p0 .. p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->parseStop()V

    iget-object v1, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    const-string v3, "GraphicsCommand"

    if-eqz v1, :cond_4

    array-length v4, v1

    if-ge v4, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    if-eqz v4, :cond_1

    array-length v4, v4

    array-length v1, v1

    if-eq v4, v1, :cond_1

    const-string v1, "color and position arrays must be of equal length"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v1, v4

    iget-object v4, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    aget-object v2, v5, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lmiui/maml/data/Expression;

    array-length v6, v5

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    aget-object v3, v5, v7

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-int v3, v5

    :cond_2
    move v12, v3

    iget-object v3, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    sget-object v5, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    if-ne v3, v5, :cond_3

    iget-object v8, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    iget-object v9, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    move-object/from16 v6, p1

    move v7, v1

    move-object v10, v4

    move-object v11, v2

    invoke-virtual/range {v6 .. v12}, Lmiui/maml/elements/GraphicsElement;->lineGradientStyle(I[I[FLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    sget-object v5, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    if-ne v3, v5, :cond_5

    iget-object v15, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    iget-object v3, v0, Lmiui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    move-object/from16 v13, p1

    move v14, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lmiui/maml/elements/GraphicsElement;->beginGradientFill(I[I[FLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$GraphicsCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/maml/elements/GraphicsElement;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/GraphicsElement;

    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    iget-object v3, p0, Lmiui/maml/ActionCommand$GraphicsCommand;->mCommand:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->setRenderListener(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->createGradientBox(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->setShader(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->drawRoundRect(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->cubicCurveTo(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->drawEllipse(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->drawCircle(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->lineStyle(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->beginFill(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->drawRect(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->curveTo(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->moveTo(Lmiui/maml/elements/GraphicsElement;)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$GraphicsCommand;->lineTo(Lmiui/maml/elements/GraphicsElement;)V

    nop

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
