.class public Lmiui/maml/SystemCommandListener;
.super Ljava/lang/Object;
.source "SystemCommandListener.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# static fields
.field private static final CLEAR_RESOURCE:Ljava/lang/String; = "__clearResource"

.field private static final REQUEST_UPDATE:Ljava/lang/String; = "__requestUpdate"


# instance fields
.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/SystemCommandListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1

    const-string v0, "__clearResource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/SystemCommandListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/SystemCommandListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0, p3}, Lmiui/maml/ResourceManager;->clear(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "__requestUpdate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/SystemCommandListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_2
    :goto_0
    return-void
.end method
