.class public final Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;
.super Ljava/lang/Object;
.source "AppDetail.kt"


# instance fields
.field public final enable:Z

.field public final referrer:Ljava/lang/String;

.field public final slug:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->enable:Z

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->slug:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->referrer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->enable:Z

    return v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getSlug()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final toEditorChoiceItem()Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->enable:Z

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->slug:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->title:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->referrer:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v3

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v3
.end method
