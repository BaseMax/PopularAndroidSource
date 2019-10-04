.class public Lcom/ebay/common/net/api/search/idealmodel/MotorTireLearnMorePresenter;
.super Ljava/lang/Object;
.source "MotorTireLearnMorePresenter.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/presenter/InfoPresenter;


# instance fields
.field private final metaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireLearnMorePresenter;->metaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    return-void
.end method


# virtual methods
.method public showMessage(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    .line 23
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireLearnMorePresenter;->metaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireLearnMorePresenter;->metaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;->partType:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireLearnMorePresenter;->metaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireLearnMorePresenter;->metaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;->queryType:Ljava/lang/String;

    :goto_1
    invoke-static {p1, p2, v0}, Lcom/ebay/mobile/verticals/motor/MotorTireLearnMoreActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
