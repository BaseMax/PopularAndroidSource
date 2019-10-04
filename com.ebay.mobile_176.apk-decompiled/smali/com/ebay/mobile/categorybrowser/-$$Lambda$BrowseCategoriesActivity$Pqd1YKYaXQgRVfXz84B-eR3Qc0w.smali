.class public final synthetic Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;

.field private final synthetic f$1:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

.field private final synthetic f$2:J

.field private final synthetic f$3:Lcom/ebay/nautilus/domain/content/Content;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;JLcom/ebay/nautilus/domain/content/Content;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;->f$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;

    iput-object p2, p0, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;->f$1:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    iput-wide p3, p0, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;->f$2:J

    iput-object p5, p0, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;->f$3:Lcom/ebay/nautilus/domain/content/Content;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;->f$0:Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;

    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;->f$1:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    iget-wide v2, p0, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;->f$2:J

    iget-object v4, p0, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;->f$3:Lcom/ebay/nautilus/domain/content/Content;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->lambda$onCategoriesChanged$1(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;JLcom/ebay/nautilus/domain/content/Content;)V

    return-void
.end method
