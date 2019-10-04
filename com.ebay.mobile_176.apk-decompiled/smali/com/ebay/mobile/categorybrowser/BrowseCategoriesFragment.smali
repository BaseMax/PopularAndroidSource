.class public final Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;
.super Lcom/ebay/mobile/activities/BaseFragment;
.source "BrowseCategoriesFragment.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$RecyclerViewOutlineProvider;,
        Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;,
        Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;,
        Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$BranchNodeOnClickListener;,
        Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$LeafNodeOnClickListener;,
        Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$NavigationOnClickListener;
    }
.end annotation


# static fields
.field public static final EXTRA_CATEGORY_ID:Ljava/lang/String; = "categoryId"

.field public static final EXTRA_CATEGORY_IMAGE_URL:Ljava/lang/String; = "categoryImageUrl"

.field public static final EXTRA_CATEGORY_LEVEL:Ljava/lang/String; = "categoryLevel"

.field public static final EXTRA_CATEGORY_NAME:Ljava/lang/String; = "categoryName"

.field public static final EXTRA_CATEGORY_SITE:Ljava/lang/String; = "categorySite"

.field public static final EXTRA_NAVIGATION_BREADCRUMBS:Ljava/lang/String; = "navigationIdPath"

.field public static final EXTRA_SELECTED_CATEGORY_ID:Ljava/lang/String; = "selectedCategoryId"


# instance fields
.field private adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private categoryId:J

.field private categoryImageUrl:Ljava/lang/String;

.field protected categoryImageView:Lcom/ebay/android/widget/RemoteImageView;

.field private categoryLevel:I

.field private categoryList:Landroidx/recyclerview/widget/RecyclerView;

.field private categoryName:Ljava/lang/String;

.field private categorySite:Lcom/ebay/nautilus/domain/EbaySite;

.field private dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

.field private dividerDrawable:Landroid/graphics/drawable/Drawable;

.field private insidePaddingDefault:I

.field private insidePaddingTop:I

.field private navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

.field private restoreLayoutState:Landroid/os/Parcelable;

.field protected selectedCategoryId:J

.field private showChildDividers:Z

.field private showParentDividers:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/ebay/mobile/activities/BaseFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 101
    iput-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->selectedCategoryId:J

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)[Lcom/ebay/nautilus/domain/data/EbayCategory;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)Lcom/ebay/nautilus/domain/EbaySite;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    return-object p0
.end method

.method static synthetic access$600(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->setOutline(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method public static constructNavigationBreadcrumbs(Lcom/ebay/nautilus/domain/data/EbayCategory;)[Lcom/ebay/nautilus/domain/data/EbayCategory;
    .locals 7
    .param p0    # Lcom/ebay/nautilus/domain/data/EbayCategory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/EbayCategory;->idPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/EbayCategory;->namePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/EbayCategory;->idPath:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v2, p0, Lcom/ebay/nautilus/domain/data/EbayCategory;->namePath:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 124
    array-length v3, v0

    array-length v4, v2

    if-ne v3, v4, :cond_2

    .line 126
    array-length p0, v0

    new-array p0, p0, [Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 127
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 129
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/NumberUtil;->safeParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_0
    new-instance v4, Lcom/ebay/nautilus/domain/data/EbayCategory;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-object v3, v2, v1

    invoke-direct {v4, v5, v6, v3}, Lcom/ebay/nautilus/domain/data/EbayCategory;-><init>(JLjava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    .line 134
    iput v3, v4, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    .line 135
    aput-object v4, p0, v1

    move v1, v3

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    const/4 v0, 0x1

    .line 141
    new-array v0, v0, [Lcom/ebay/nautilus/domain/data/EbayCategory;

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static createFragmentTag(I)Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getMotorsCategoriesBySite(Lcom/ebay/nautilus/domain/EbaySite;)Ljava/util/List;
    .locals 6
    .param p0    # Lcom/ebay/nautilus/domain/EbaySite;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/EbaySite;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 590
    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->MOTOR:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->CA:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->CAFR:Lcom/ebay/nautilus/domain/EbaySite;

    .line 591
    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 594
    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->MY:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x2648

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_4

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->PH:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->SG:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 597
    :cond_1
    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->UK:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->AU:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->AT:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->FRBE:Lcom/ebay/nautilus/domain/EbaySite;

    .line 598
    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->FR:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->DE:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->IT:Lcom/ebay/nautilus/domain/EbaySite;

    .line 599
    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->NLBE:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->NL:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->ES:Lcom/ebay/nautilus/domain/EbaySite;

    .line 600
    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->CH:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->IE:Lcom/ebay/nautilus/domain/EbaySite;

    .line 601
    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ebay/nautilus/domain/EbaySite;->PL:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 604
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 602
    :cond_3
    :goto_0
    new-array p0, v5, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, v4

    const-wide/32 v2, 0x20012

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 595
    :cond_4
    :goto_1
    new-array p0, v5, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, v4

    const-wide/16 v2, 0x178c

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    const-wide/16 v0, 0x1770

    .line 592
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static setOutline(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 855
    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 856
    instance-of v1, v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$RecyclerViewOutlineProvider;

    if-nez v1, :cond_0

    .line 858
    new-instance v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$RecyclerViewOutlineProvider;

    invoke-direct {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$RecyclerViewOutlineProvider;-><init>()V

    .line 859
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 862
    :cond_0
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 863
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 864
    check-cast v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$RecyclerViewOutlineProvider;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$RecyclerViewOutlineProvider;->setOutline(Landroid/graphics/Outline;)V

    .line 865
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method


# virtual methods
.method public getCategoryInfo()Lcom/ebay/nautilus/domain/data/EbayCategory;
    .locals 4

    .line 426
    new-instance v0, Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    iget-object v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/nautilus/domain/data/EbayCategory;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method protected isInMotors()Z
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    sget-object v1, Lcom/ebay/nautilus/domain/EbaySite;->MOTOR:Lcom/ebay/nautilus/domain/EbaySite;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    array-length v0, v0

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-static {v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getMotorsCategoriesBySite(Lcom/ebay/nautilus/domain/EbaySite;)Ljava/util/List;

    move-result-object v0

    .line 579
    iget-object v2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    aget-object v1, v2, v1

    iget-wide v1, v1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public onCategoriesChanged(Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;JLcom/ebay/nautilus/domain/content/Content;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;",
            "J",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/EbayCategoryNode;",
            ">;)V"
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 368
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 376
    :cond_1
    iget-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    return-void

    :cond_2
    if-nez p4, :cond_3

    return-void

    .line 383
    :cond_3
    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p2

    .line 384
    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;

    .line 386
    iget-object p4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->setLoading(Z)V

    .line 387
    iget-object p4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p4, :cond_4

    .line 388
    iget-object p4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f12030b

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroidx/recyclerview/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 390
    :cond_4
    invoke-virtual {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p4

    if-eqz p4, :cond_5

    instance-of p4, p1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    .line 392
    invoke-virtual {p2, p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->setCanRetry(Z)V

    .line 393
    invoke-static {p1, v0, p2}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 395
    iget-object p1, p3, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->children:[Lcom/ebay/nautilus/domain/data/EbayCategoryNode;

    array-length p1, p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    if-eqz p1, :cond_6

    .line 396
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    iget-object p2, p3, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->children:[Lcom/ebay/nautilus/domain/data/EbayCategoryNode;

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->setChildCategories([Lcom/ebay/nautilus/domain/data/EbayCategoryNode;)V

    .line 398
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->restoreLayoutState:Landroid/os/Parcelable;

    if-eqz p1, :cond_7

    .line 400
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->restoreLayoutState:Landroid/os/Parcelable;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 401
    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->restoreLayoutState:Landroid/os/Parcelable;

    :cond_7
    return-void

    :cond_8
    :goto_1
    return-void
.end method

.method public onCategoriesLoading(Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;J)V
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 353
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_1

    .line 358
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->setLoading(Z)V

    .line 359
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 360
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f12030c

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 159
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f1206b8

    const-wide/16 v5, -0x1

    if-eqz p1, :cond_0

    const-string v0, "categoryId"

    .line 165
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    const-string v0, "categoryName"

    .line 166
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryName:Ljava/lang/String;

    const-string v0, "categoryLevel"

    .line 167
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryLevel:I

    const-string v0, "categoryImageUrl"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageUrl:Ljava/lang/String;

    const-string v0, "navigationIdPath"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    const-string v0, "categorySite"

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/EbaySite;

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    const-string/jumbo v0, "savedLayoutState"

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->restoreLayoutState:Landroid/os/Parcelable;

    const-string/jumbo v0, "selectedCategoryId"

    .line 172
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->selectedCategoryId:J

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "categoryId"

    .line 176
    invoke-virtual {v0, p1, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    const-string p1, "categoryName"

    .line 177
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryName:Ljava/lang/String;

    const-string p1, "categoryLevel"

    .line 178
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryLevel:I

    const-string p1, "categoryImageUrl"

    .line 179
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageUrl:Ljava/lang/String;

    const-string p1, "categorySite"

    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/EbaySite;

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    const-string/jumbo p1, "selectedCategoryId"

    .line 181
    invoke-virtual {v0, p1, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->selectedCategoryId:J

    const-string p1, "navigationIdPath"

    .line 182
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_0

    .line 186
    :cond_1
    iput-wide v5, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    .line 187
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryName:Ljava/lang/String;

    .line 188
    iput v3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryLevel:I

    .line 189
    iput-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    .line 190
    iput-wide v5, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->selectedCategoryId:J

    .line 191
    new-array p1, v2, [Lcom/ebay/nautilus/domain/data/EbayCategory;

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 194
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    if-nez p1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getBaseActivity()Lcom/ebay/nautilus/shell/app/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    :cond_2
    if-eqz v1, :cond_3

    .line 200
    array-length p1, v1

    new-array p1, p1, [Lcom/ebay/nautilus/domain/data/EbayCategory;

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 201
    :goto_1
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    array-length p1, p1

    if-ge v2, p1, :cond_4

    .line 202
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    aget-object v0, v1, v2

    check-cast v0, Lcom/ebay/nautilus/domain/data/EbayCategory;

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_3
    new-array p1, v2, [Lcom/ebay/nautilus/domain/data/EbayCategory;

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 209
    :cond_4
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 210
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08042f

    .line 211
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 210
    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0402f6

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0700ef

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->insidePaddingTop:I

    const v0, 0x7f0700ee

    .line 214
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->insidePaddingDefault:I

    const v0, 0x7f050004

    .line 215
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->showChildDividers:Z

    const v0, 0x7f050005

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->showParentDividers:Z

    .line 218
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->initDataManagers()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p3, 0x0

    const v0, 0x7f0d0080

    .line 224
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a07e1

    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ebay/android/widget/RemoteImageView;

    iput-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageView:Lcom/ebay/android/widget/RemoteImageView;

    .line 227
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageView:Lcom/ebay/android/widget/RemoteImageView;

    if-eqz p2, :cond_0

    .line 229
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageView:Lcom/ebay/android/widget/RemoteImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "categoryImage-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ebay/android/widget/RemoteImageView;->setTransitionName(Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageView:Lcom/ebay/android/widget/RemoteImageView;

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageView:Lcom/ebay/android/widget/RemoteImageView;

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060040

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ebay/android/widget/RemoteImageView;->setColorFilter(I)V

    .line 234
    :cond_0
    new-instance p2, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-direct {p2, v0, v1}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/EbaySite;)V

    iput-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    .line 235
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    new-instance v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$NavigationOnClickListener;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$NavigationOnClickListener;-><init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {p2, v0, v2}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->setOnClickListener(Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;[I)V

    .line 237
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    new-instance v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$LeafNodeOnClickListener;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$LeafNodeOnClickListener;-><init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x3

    aput v4, v3, p3

    invoke-virtual {p2, v0, v3}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->setOnClickListener(Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;[I)V

    .line 239
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    new-instance v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$BranchNodeOnClickListener;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$BranchNodeOnClickListener;-><init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)V

    new-array v3, v2, [I

    const/4 v4, 0x4

    aput v4, v3, p3

    invoke-virtual {p2, v0, v3}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->setOnClickListener(Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;[I)V

    .line 243
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    new-instance v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$LeafNodeOnClickListener;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$LeafNodeOnClickListener;-><init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)V

    new-array v3, v2, [I

    aput v1, v3, p3

    invoke-virtual {p2, v0, v3}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->setOnClickListener(Lcom/ebay/mobile/common/view/ViewModel$OnClickListener;[I)V

    .line 246
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    if-eqz p2, :cond_1

    .line 247
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    iget-object p3, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    invoke-virtual {p2, p3}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;->setBreadcrumbs([Lcom/ebay/nautilus/domain/data/EbayCategory;)V

    :cond_1
    const p2, 0x7f0a035a

    .line 249
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 250
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 251
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;

    iget-object v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    array-length v6, v0

    iget v7, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->insidePaddingTop:I

    iget v8, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->insidePaddingDefault:I

    iget-boolean v9, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->showParentDividers:Z

    iget-boolean v10, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->showChildDividers:Z

    move-object v3, p3

    invoke-direct/range {v3 .. v10}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$ListDecoration;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIIZZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 255
    iget-object p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070117

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 258
    iget p2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryLevel:I

    if-ne p2, v2, :cond_2

    .line 260
    new-instance p2, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;

    invoke-direct {p2, p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$TileToListAnimationTrigger;-><init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)V

    .line 261
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V

    .line 262
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V

    :cond_2
    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    .line 341
    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 342
    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    .line 343
    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageView:Lcom/ebay/android/widget/RemoteImageView;

    const-wide/16 v0, -0x1

    .line 344
    iput-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->selectedCategoryId:J

    .line 346
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onDestroyView()V

    return-void
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 2

    .line 313
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 316
    new-instance v0, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;-><init>(Lcom/ebay/nautilus/domain/EbaySite;)V

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    .line 317
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->refresh()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 280
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onResume()V

    .line 282
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->adapter:Lcom/ebay/mobile/categorybrowser/CategoryLineItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "accessibility"

    .line 287
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 288
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    new-instance v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment$1;-><init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;)V

    .line 306
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 323
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "categoryId"

    .line 325
    iget-wide v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "categoryName"

    .line 326
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "categoryLevel"

    .line 327
    iget v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "categorySite"

    .line 328
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "categoryImageUrl"

    .line 329
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "navigationIdPath"

    .line 330
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string/jumbo v0, "selectedCategoryId"

    .line 331
    iget-wide v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->selectedCategoryId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 332
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->restoreLayoutState:Landroid/os/Parcelable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->restoreLayoutState:Landroid/os/Parcelable;

    :cond_0
    const-string/jumbo v0, "savedLayoutState"

    .line 334
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->restoreLayoutState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    .line 271
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 273
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "selectedCategoryId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->selectedCategoryId:J

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    if-eqz v0, :cond_1

    .line 412
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 413
    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->categoryServiceLimitByLevel:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryLevel:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 416
    :goto_0
    iget-wide v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->dataManager:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    iget-wide v2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->categoryId:J

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;->loadData(JILcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$Observer;)V

    :cond_1
    return-void
.end method
