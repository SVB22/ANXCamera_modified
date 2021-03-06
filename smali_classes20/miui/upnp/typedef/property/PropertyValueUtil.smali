.class public Lmiui/upnp/typedef/property/PropertyValueUtil;
.super Ljava/lang/Object;
.source "PropertyValueUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PropertyValueUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByType(Ljava/lang/Class;)Lmiui/upnp/typedef/property/PropertyValue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiui/upnp/typedef/property/PropertyValue;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const-class v2, Ljava/lang/Boolean;

    if-ne p0, v2, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    :cond_1
    const-class v2, Ljava/lang/Long;

    if-ne p0, v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    :cond_2
    const-class v2, Ljava/lang/Integer;

    if-ne p0, v2, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    :cond_3
    const-class v2, Ljava/lang/Float;

    if-ne p0, v2, :cond_4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    :cond_4
    const-class v2, Ljava/lang/Double;

    if-ne p0, v2, :cond_6

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :goto_2
    invoke-static {v0}, Lmiui/upnp/typedef/property/PropertyValue;->create(Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v1

    return-object v1
.end method

.method public static createByType(Ljava/lang/Class;Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lmiui/upnp/typedef/property/PropertyValue;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Lmiui/upnp/typedef/property/PropertyValueUtil;->createByType(Ljava/lang/Class;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lmiui/upnp/typedef/property/PropertyValue;->create(Ljava/lang/Object;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "invalid: type is %s, init value is %s (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PropertyValueUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lmiui/upnp/typedef/property/PropertyValueUtil;->createByType(Ljava/lang/Class;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    :goto_0
    return-object v0
.end method
