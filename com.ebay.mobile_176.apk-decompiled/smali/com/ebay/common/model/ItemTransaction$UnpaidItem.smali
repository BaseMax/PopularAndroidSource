.class public Lcom/ebay/common/model/ItemTransaction$UnpaidItem;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "ItemTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/ItemTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnpaidItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/ItemTransaction$UnpaidItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public status:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 551
    new-instance v0, Lcom/ebay/common/model/ItemTransaction$UnpaidItem$1;

    invoke-direct {v0}, Lcom/ebay/common/model/ItemTransaction$UnpaidItem$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/ItemTransaction$UnpaidItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 547
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    return-void
.end method
