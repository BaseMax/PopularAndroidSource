.class public final Lcom/ebay/common/model/RemindersList;
.super Ljava/lang/Object;
.source "RemindersList.java"


# instance fields
.field public count:I

.field public hasMore:Z

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/MyEbayListItem;",
            ">;"
        }
    .end annotation
.end field

.field public nextPageLocator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/RemindersList;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/ebay/common/model/RemindersList;->hasMore:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/ebay/common/model/RemindersList;->nextPageLocator:Ljava/lang/String;

    return-void
.end method
