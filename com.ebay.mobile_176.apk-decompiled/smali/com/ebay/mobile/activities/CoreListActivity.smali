.class public abstract Lcom/ebay/mobile/activities/CoreListActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "CoreListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/CoreListActivity$Helper;
    }
.end annotation


# instance fields
.field private final _helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    .line 12
    new-instance v0, Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/CoreListActivity$Helper;-><init>(Lcom/ebay/mobile/activities/CoreListActivity;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity;->_helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    return-void
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity;->_helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreListActivity$Helper;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity;->_helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreListActivity$Helper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity;->_helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreListActivity$Helper;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity;->_helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreListActivity$Helper;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onContentChanged()V

    .line 45
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity;->_helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreListActivity$Helper;->contentChanged()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity;->_helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreListActivity$Helper;->destroy()V

    .line 38
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity;->_helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreListActivity$Helper;->ensureList()V

    .line 31
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity;->_helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/activities/CoreListActivity$Helper;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreListActivity;->_helper:Lcom/ebay/mobile/activities/CoreListActivity$Helper;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/activities/CoreListActivity$Helper;->setSelection(I)V

    return-void
.end method
