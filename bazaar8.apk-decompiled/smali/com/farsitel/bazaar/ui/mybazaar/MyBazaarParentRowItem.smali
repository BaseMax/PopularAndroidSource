.class public abstract Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;
.super Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarRowItem;
.source "MyBazaarItem.kt"


# instance fields
.field public final analyticsEvent:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

.field public final icon:I

.field public final id:I

.field public final title:I


# direct methods
.method public constructor <init>(IIILcom/farsitel/bazaar/analytics/model/what/WhatType;)V
    .locals 1

    const-string v0, "analyticsEvent"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarRowItem;-><init>(Lh/f/b/f;)V

    iput p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;->id:I

    iput p2, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;->title:I

    iput p3, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;->icon:I

    iput-object p4, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;->analyticsEvent:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    return-void
.end method


# virtual methods
.method public a()Lcom/farsitel/bazaar/analytics/model/what/WhatType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;->analyticsEvent:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;->id:I

    return v0
.end method
