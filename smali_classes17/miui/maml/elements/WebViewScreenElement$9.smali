.class Lmiui/maml/elements/WebViewScreenElement$9;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/WebViewScreenElement;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WebViewScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/WebViewScreenElement;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->access$200(Lmiui/maml/elements/WebViewScreenElement;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->access$300(Lmiui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/elements/WebViewScreenElement;->access$400(Lmiui/maml/elements/WebViewScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z

    const-string v0, "MAML WebViewScreenElement"

    const-string v1, "addWebView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/WebViewScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getViewManager()Landroid/view/ViewManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/WebViewScreenElement;->access$100(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v2}, Lmiui/maml/elements/WebViewScreenElement;->access$300(Lmiui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/maml/elements/WebViewScreenElement;->access$202(Lmiui/maml/elements/WebViewScreenElement;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->access$500(Lmiui/maml/elements/WebViewScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->access$100(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method