.class final Lorg/apache/miui/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;
.super Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setUseClassName(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setUseIdentityHashCode(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setUseFieldNames(Z)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setContentStart(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;->setContentEnd(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method