.class Lcom/miui/internal/widget/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic QG:Z

.field final synthetic j:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/K;->j:Lcom/miui/internal/widget/SlidingButtonHelper;

    iput-boolean p2, p0, Lcom/miui/internal/widget/K;->QG:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/K;->j:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->e(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/K;->j:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->e(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/K;->j:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->d(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton;

    move-result-object v1

    iget-boolean p0, p0, Lcom/miui/internal/widget/K;->QG:Z

    invoke-interface {v0, v1, p0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
