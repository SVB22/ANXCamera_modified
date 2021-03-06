.class abstract Lmiui/maml/ActionCommand$TargetCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TargetCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$TargetCommand$TargetType;
    }
.end annotation


# instance fields
.field protected mLogStr:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;

.field protected mTargetIndex:Lmiui/maml/data/Expression;

.field protected mTargetName:Ljava/lang/String;

.field protected mTargetNameExp:Lmiui/maml/data/Expression;

.field protected mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "targetExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lmiui/maml/data/Expression;

    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "target"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "targetIndex"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    const-string/jumbo v0, "targetType"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v1, "element"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "var"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_1

    :cond_3
    const-string v1, "ctor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    return-void
.end method

.method private findTarget()V
    .locals 4

    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "ActionCommand"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->getAnimationItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v0, "MethodCommand, type=var, empty target name"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-nez v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find ScreenElement target, name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_6

    invoke-static {v0}, Lmiui/maml/elements/ElementGroup;->isArrayGroup(Lmiui/maml/elements/ScreenElement;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target with index is not an ArrayGroup, name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method protected getTarget()Ljava/lang/Object;
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lmiui/maml/data/Expression;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iput-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    iput-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v3

    :cond_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/maml/ActionCommand$TargetCommand;->findTarget()V

    :cond_1
    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    iget-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v4}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    return-object v3

    :cond_2
    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v2

    :cond_3
    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v2

    :cond_4
    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    iget-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "target with index is not an Array variable, name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActionCommand"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    goto :goto_0

    :cond_6
    return-object v2

    :cond_7
    :goto_0
    return-object v3

    :cond_8
    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v2, :cond_9

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_9

    check-cast v2, Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/ElementGroup;->getChild(I)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    return-object v2

    :cond_9
    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v2
.end method

.method public init()V
    .locals 0

    invoke-super {p0}, Lmiui/maml/ActionCommand;->init()V

    invoke-direct {p0}, Lmiui/maml/ActionCommand$TargetCommand;->findTarget()V

    return-void
.end method
