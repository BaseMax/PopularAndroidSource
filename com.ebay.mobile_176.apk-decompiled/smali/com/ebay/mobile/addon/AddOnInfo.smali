.class public Lcom/ebay/mobile/addon/AddOnInfo;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "AddOnInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/mobile/addon/AddOnInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final postalCode:Ljava/lang/String;

.field public final quantity:Ljava/lang/Integer;

.field public final type:Lcom/ebay/mobile/AddOnItem$AddOnType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/ebay/mobile/addon/AddOnInfo$1;

    invoke-direct {v0}, Lcom/ebay/mobile/addon/AddOnInfo$1;-><init>()V

    sput-object v0, Lcom/ebay/mobile/addon/AddOnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/ebay/mobile/AddOnItem$AddOnType;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0, p2}, Lcom/ebay/mobile/addon/AddOnInfo;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/ebay/mobile/AddOnItem$AddOnType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/ebay/mobile/AddOnItem$AddOnType;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ebay/mobile/addon/AddOnInfo;->quantity:Ljava/lang/Integer;

    .line 28
    iput-object p3, p0, Lcom/ebay/mobile/addon/AddOnInfo;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    .line 29
    iput-object p2, p0, Lcom/ebay/mobile/addon/AddOnInfo;->postalCode:Ljava/lang/String;

    return-void
.end method
