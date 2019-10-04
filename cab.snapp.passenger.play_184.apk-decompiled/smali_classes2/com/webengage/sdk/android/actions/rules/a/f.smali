.class Lcom/webengage/sdk/android/actions/rules/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:C

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->b:I

    iput-char v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->c:C

    const-string v1, ""

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->d:Ljava/lang/String;

    iput v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->e:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/rules/a/f;->b()V

    return-void
.end method

.method private b()V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput v1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->g:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    iget v6, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->g:I

    iget-object v7, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v6, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->g:I

    iput v6, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->f:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_1
    iget v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->f:I

    iget-object v10, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->a:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_5

    iget-object v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->a:Ljava/lang/String;

    iget v10, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->f:I

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iput-char v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->c:C

    iget-char v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->c:C

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->c:C

    const/16 v10, 0x22

    if-ne v9, v10, :cond_0

    if-ne v5, v3, :cond_0

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->f:I

    iput v4, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->g:I

    const/4 v4, 0x0

    goto :goto_3

    :cond_0
    iget-char v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->c:C

    if-ne v9, v10, :cond_1

    if-ne v5, v8, :cond_1

    const/4 v5, -0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v5, v3, :cond_2

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    iget-char v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->c:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_3

    if-eqz v4, :cond_3

    mul-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/a/c;->a()Lcom/webengage/sdk/android/actions/rules/a/c;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/webengage/sdk/android/actions/rules/a/c;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    iget v7, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->f:I

    move v12, v7

    move v7, v6

    move v6, v12

    :cond_4
    :goto_2
    iget v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->f:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->f:I

    goto :goto_1

    :cond_5
    :goto_3
    if-eq v6, v3, :cond_8

    iget-object v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    sub-int v10, v6, v7

    add-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    iget-object v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int v10, v6, v7

    add-int/2addr v10, v8

    if-eq v9, v10, :cond_7

    iget-object v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v9, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    sub-int v7, v6, v7

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    add-int/lit8 v9, v6, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v6, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->g:I

    :cond_8
    iget v6, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->g:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->g:I

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    iget v1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->e:I

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    iget v1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    iget v2, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    iget v3, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->b:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->b:I

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/f;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/rules/a/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
