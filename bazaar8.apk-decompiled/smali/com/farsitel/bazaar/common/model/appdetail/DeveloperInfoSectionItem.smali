.class public final Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;
.implements Ljava/io/Serializable;


# instance fields
.field public final appEmail:Ljava/lang/String;

.field public final appPhone:Ljava/lang/String;

.field public final homepage:Ljava/lang/String;

.field public final showEmailDivider:Z

.field public final showPhoneDivider:Z

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appEmail:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appPhone:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->homepage:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->DEVELOPER_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->viewType:I

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appEmail:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appPhone:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->homepage:Ljava/lang/String;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->showEmailDivider:Z

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->homepage:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appPhone:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->showPhoneDivider:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appEmail:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appPhone:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->homepage:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appPhone:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->homepage:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appEmail:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appEmail:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appPhone:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appPhone:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->homepage:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->homepage:Ljava/lang/String;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAppEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appPhone:Ljava/lang/String;

    return-object v0
.end method

.method public final getHomepage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->homepage:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowEmailDivider()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->showEmailDivider:Z

    return v0
.end method

.method public final getShowPhoneDivider()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->showPhoneDivider:Z

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appEmail:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appPhone:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->homepage:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeveloperInfoSectionItem(appEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->appPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", homepage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;->homepage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
