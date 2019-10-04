.class public final Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;
.super Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;
.source "MyBazaarItem.kt"


# instance fields
.field public final analyticsEvent:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

.field public final icon:I

.field public final id:I

.field public switchState:Z

.field public final title:I

.field public final viewType:I


# direct methods
.method public constructor <init>(IIIZLcom/farsitel/bazaar/analytics/model/what/WhatType;)V
    .locals 1

    const-string v0, "analyticsEvent"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarParentRowItem;-><init>(IIILcom/farsitel/bazaar/analytics/model/what/WhatType;)V

    iput p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->id:I

    iput p2, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->title:I

    iput p3, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->icon:I

    iput-boolean p4, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->switchState:Z

    iput-object p5, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->analyticsEvent:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;->SWITCH_ITEM:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->viewType:I

    return-void
.end method


# virtual methods
.method public a()Lcom/farsitel/bazaar/analytics/model/what/WhatType;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->analyticsEvent:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->switchState:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->id:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->icon:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->switchState:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->title:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;->viewType:I

    return v0
.end method
