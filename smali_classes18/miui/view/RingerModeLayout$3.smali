.class Lmiui/view/RingerModeLayout$3;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/RingerModeLayout$3;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lmiui/view/RingerModeLayout$3;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getConditionId(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "RingerModeLayout"

    const v4, 0x11090095

    if-ne v2, v4, :cond_0

    const-string v2, "set total mode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x11090094

    if-ne v2, v4, :cond_1

    const-string v2, "set standard mode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    :cond_1
    :goto_0
    iget-object v2, p0, Lmiui/view/RingerModeLayout$3;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v2}, Lmiui/view/RingerModeLayout;->access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method
