.class public final synthetic Lcom/android/camera/fragment/mode/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic kg:Lcom/android/camera/fragment/mode/ModeAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/mode/ModeAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/c;->kg:Lcom/android/camera/fragment/mode/ModeAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/c;->kg:Lcom/android/camera/fragment/mode/ModeAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->g(Landroid/view/View;)V

    return-void
.end method
