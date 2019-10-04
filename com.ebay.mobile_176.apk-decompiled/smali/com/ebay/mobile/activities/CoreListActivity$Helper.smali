.class Lcom/ebay/mobile/activities/CoreListActivity$Helper;
.super Lcom/ebay/nautilus/shell/app/ListViewHelper;
.source "CoreListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CoreListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/shell/app/ListViewHelper<",
        "Lcom/ebay/mobile/activities/CoreListActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/activities/CoreListActivity;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/ebay/nautilus/shell/app/ListViewHelper;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity$Helper;->_activity:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Lcom/ebay/mobile/activities/CoreListActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ebay/mobile/activities/CoreListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
