.class public final Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;
.super Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;
.source "ProfileItem.kt"


# instance fields
.field public error:Ljava/lang/String;

.field public errorHappened:Z

.field public final id:I

.field public isLoading:Z

.field public title:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;-><init>(Lh/f/b/f;)V

    iput p1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->id:I

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->title:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->isLoading:Z

    iput-object p4, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->error:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->errorHappened:Z

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;->PROFILE_CREDIT_ITEM:Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->viewType:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->error:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->errorHappened:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->title:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->isLoading:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->errorHappened:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->id:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->isLoading:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    iget v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->id:I

    iget v3, p1, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->id:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->isLoading:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->isLoading:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->error:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->error:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->errorHappened:Z

    iget-boolean p1, p1, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->errorHappened:Z

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->id:I

    invoke-static {v0}, La;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->isLoading:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->error:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->errorHappened:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProfileCreditItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->isLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorHappened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->errorHappened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
