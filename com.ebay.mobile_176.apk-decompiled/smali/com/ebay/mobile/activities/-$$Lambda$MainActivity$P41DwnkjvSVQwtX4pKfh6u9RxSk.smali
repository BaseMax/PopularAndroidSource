.class public final synthetic Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/common/content/dm/search/FollowingDataManager;

.field private final synthetic f$1:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/util/List;

.field private final synthetic f$4:Lcom/ebay/mobile/home/answers/HomeAnswersFragment$HomeFollowingObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;Lcom/ebay/mobile/home/answers/HomeAnswersFragment$HomeFollowingObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;->f$0:Lcom/ebay/common/content/dm/search/FollowingDataManager;

    iput-object p2, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;->f$1:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    iput-object p3, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;->f$4:Lcom/ebay/mobile/home/answers/HomeAnswersFragment$HomeFollowingObserver;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;->f$0:Lcom/ebay/common/content/dm/search/FollowingDataManager;

    iget-object v1, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;->f$1:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    iget-object v2, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$P41DwnkjvSVQwtX4pKfh6u9RxSk;->f$4:Lcom/ebay/mobile/home/answers/HomeAnswersFragment$HomeFollowingObserver;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/activities/MainActivity;->lambda$showDeletedSaveSnackBar$3(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/net/api/search/following/InterestDescriptor;Ljava/lang/String;Ljava/util/List;Lcom/ebay/mobile/home/answers/HomeAnswersFragment$HomeFollowingObserver;Landroid/view/View;)V

    return-void
.end method
