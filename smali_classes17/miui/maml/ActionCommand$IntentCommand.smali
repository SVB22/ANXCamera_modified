.class Lmiui/maml/ActionCommand$IntentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$IntentCommand$IntentType;
    }
.end annotation


# static fields
.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

.field private mFallbackTrigger:Lmiui/maml/CommandTrigger;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentInfo:Lmiui/maml/util/IntentInfo;

.field private mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

.field private mIntentVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 6

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    new-instance v0, Lmiui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lmiui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    const-string v0, "broadcast"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "type"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "service"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_1

    :cond_1
    const-string v0, "activity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "var"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    const-string v0, "intentVar"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    :cond_4
    :goto_1
    const/4 v0, -0x1

    const-string v3, "flags"

    invoke-static {p2, v3, v0}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    const-string v0, "activityOption"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    new-instance v3, Lmiui/maml/ActionCommand$ObjVar;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lmiui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    :goto_2
    iput-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    const-string v3, "Fallback"

    invoke-static {p2, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v4, Lmiui/maml/CommandTrigger;

    invoke-direct {v4, v3, p1}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    :cond_6
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 5

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    :try_start_0
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3, v0}, Lmiui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_1
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v3, v2, v4, v0}, Lmiui/maml/util/PreloadAppPolicyHelper;->installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    nop

    :cond_7
    :goto_3
    goto :goto_4

    :cond_8
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    const-string v2, "ActionCommand"

    if-eqz v1, :cond_9

    const-string v1, "fail to send Intent, fallback..."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lmiui/maml/util/IntentInfo;->set(Lmiui/maml/util/Task;)V

    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    iget v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    sget-object v2, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_3
    :goto_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->init()V

    :cond_4
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    :cond_0
    return-void
.end method
