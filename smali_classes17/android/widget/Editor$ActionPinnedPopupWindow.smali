.class abstract Landroid/widget/Editor$ActionPinnedPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$Fader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActionPinnedPopupWindow"
.end annotation


# static fields
.field protected static final LONG_ACTION_MENU_COUNT:I = 0x6


# instance fields
.field protected mAboveHandle:Z

.field protected mAnimationFadeIn:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOut:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandleView:Landroid/widget/Editor$HandleView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field protected mMainPanel:Landroid/widget/TouchPanelLayout;

.field private mShower:Ljava/lang/Runnable;

.field private mSpaceOffScreen:I

.field private final mTouchableRegion:Landroid/graphics/Region;

.field protected mVisibleChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$1;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$2;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    iput-object p2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-static {p1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110600c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->createAnimations()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setFader(Landroid/widget/Editor$Fader;)V

    invoke-static {p1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/Editor$ActionPinnedPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMiddleOffsetInSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/widget/Editor$HandleView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/graphics/Region;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method private isMainPanelContent()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isMiddleOffsetInSelection()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method protected clipVertically(I)I
    .locals 10

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x110701f5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    const/4 v7, 0x0

    if-gez p1, :cond_1

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8, v1}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    if-le v5, v8, :cond_0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr p1, v8

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr p1, v8

    :goto_0
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p1, v8

    div-int/lit8 v8, v6, 0x2

    add-int/2addr p1, v8

    iput-boolean v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_2

    :cond_1
    if-gez p1, :cond_2

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    add-int/2addr p1, v8

    div-int/lit8 v8, v6, 0x2

    add-int/2addr p1, v8

    iput-boolean v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_2

    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, p1

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)I

    move-result v8

    if-le v7, v8, :cond_4

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7, v2}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    if-le v5, v7, :cond_3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr p1, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr p1, v7

    :goto_1
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr p1, v7

    div-int/lit8 v7, v6, 0x2

    sub-int/2addr p1, v7

    :cond_4
    :goto_2
    return p1
.end method

.method protected computeLocalPosition()V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->measureContent()V

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3, v0}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3, v1}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v3}, Landroid/widget/Editor$HandleView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110701f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->getTextOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v3, v4}, Landroid/widget/Editor;->access$2402(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_4
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    :goto_0
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    iget v4, v4, Landroid/widget/Editor$HandleView;->mHorizontalScale:F

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    add-float v7, v5, v6

    int-to-float v8, v3

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, v4

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionX:I

    return-void
.end method

.method protected abstract createAnimations()V
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->dismiss()V

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setZeroTouchableSurface()V

    return-void
.end method

.method public fadeOut()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method protected getSelectionEnd()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getSelectionStart()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getTextOffset()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    return-void
.end method

.method protected measureContent()V
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    :goto_0
    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 v2, -0x80000000

    :goto_2
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->measure(II)V

    return-void
.end method

.method protected setContentAreaAsTouchableSurface(Z)V
    .locals 12

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x110900c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sget-boolean v8, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x5

    goto :goto_0

    :cond_1
    const/4 v8, 0x6

    :goto_0
    if-ge v7, v8, :cond_2

    const/high16 v7, -0x80000000

    goto :goto_1

    :cond_2
    const/high16 v7, 0x40000000    # 2.0f

    :goto_1
    nop

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/view/View;->measure(II)V

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    add-int/2addr v10, v5

    sub-int/2addr v10, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v6

    sub-int/2addr v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method

.method protected setMainPanelAsContent()V
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    invoke-virtual {v0}, Landroid/widget/TouchPanelLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    return-void
.end method

.method protected setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v1, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    invoke-static {v0}, Landroid/widget/Editor$InsertionHandleView;->access$2600(Landroid/widget/Editor$InsertionHandleView;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x110900c1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->computeLocalPosition()V

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    return-void
.end method

.method public setY(I)V
    .locals 0

    return-void
.end method

.method protected setZeroTouchableSurface()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setMainPanelAsContent()V

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    return-void
.end method

.method show(I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected updatePosition(II)V
    .locals 7

    iget v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Landroid/widget/Editor$ActionPinnedPopupWindow;->clipVertically(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    neg-int v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setTouchableSurfaceInsetsComputer()V

    :goto_0
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 3

    if-nez p4, :cond_0

    if-eqz p3, :cond_4

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v2, v1, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/Editor$InsertionHandleView;

    invoke-static {v1}, Landroid/widget/Editor$InsertionHandleView;->access$2600(Landroid/widget/Editor$InsertionHandleView;)V

    const/4 v2, 0x1

    move v0, v2

    invoke-static {v1, v2}, Landroid/widget/Editor$InsertionHandleView;->access$2702(Landroid/widget/Editor$InsertionHandleView;Z)Z

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMainPanelContent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopSelectionActionMode()V

    :cond_4
    :goto_0
    return-void
.end method
