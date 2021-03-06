.class public Lmiui/yellowpage/ServicesDataEntry;
.super Ljava/lang/Object;
.source "ServicesDataEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/ServicesDataEntry$Type;
    }
.end annotation


# instance fields
.field private mGroupName:Ljava/lang/String;

.field private mItemType:Lmiui/yellowpage/ServicesDataEntry$Type;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/yellowpage/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/yellowpage/ServicesDataEntry$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/ServicesDataEntry;->mItemType:Lmiui/yellowpage/ServicesDataEntry$Type;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lmiui/yellowpage/ServicesDataEntry;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmiui/yellowpage/ServicesDataEntry;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/ServicesDataEntry;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/ServicesDataEntry;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "data"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Lmiui/yellowpage/ServicesDataEntry;

    invoke-static {}, Lmiui/yellowpage/ServicesDataEntry$Type;->values()[Lmiui/yellowpage/ServicesDataEntry$Type;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-direct {v4, v5}, Lmiui/yellowpage/ServicesDataEntry;-><init>(Lmiui/yellowpage/ServicesDataEntry$Type;)V

    invoke-virtual {v4, v1}, Lmiui/yellowpage/ServicesDataEntry;->setName(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Lmiui/yellowpage/Service;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/Service;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmiui/yellowpage/Service;->setRawData(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v5}, Lmiui/yellowpage/ServicesDataEntry;->setServices(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/ServicesDataEntry;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lmiui/yellowpage/ServicesDataEntry$Type;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/ServicesDataEntry;->mItemType:Lmiui/yellowpage/ServicesDataEntry$Type;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/yellowpage/Service;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/yellowpage/ServicesDataEntry;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public setItemType(Lmiui/yellowpage/ServicesDataEntry$Type;)V
    .locals 0

    iput-object p1, p0, Lmiui/yellowpage/ServicesDataEntry;->mItemType:Lmiui/yellowpage/ServicesDataEntry$Type;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/yellowpage/ServicesDataEntry;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/yellowpage/Service;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/yellowpage/ServicesDataEntry;->mServices:Ljava/util/List;

    return-void
.end method
