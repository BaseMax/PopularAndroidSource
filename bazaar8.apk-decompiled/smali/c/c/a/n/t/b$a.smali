.class public final Lc/c/a/n/t/b$a;
.super Ljava/lang/Object;
.source "ProfileDataFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/t/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/n/t/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "phoneNumber"

    invoke-static {v0, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v2, Lcom/farsitel/bazaar/app/BazaarApp;->i:Lcom/farsitel/bazaar/app/BazaarApp$a;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/app/BazaarApp$a;->a()Lcom/farsitel/bazaar/app/BazaarApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    .line 3
    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lc/c/a/c/b/i;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 4
    new-instance v0, Lcom/farsitel/bazaar/ui/profile/ProfileHeaderItem;

    const v3, 0x7f100219

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.user_information)"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/farsitel/bazaar/ui/profile/ProfileHeaderItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcom/farsitel/bazaar/ui/profile/ProfileItem;

    const v3, 0x7f10012a

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "context.getString(R.string.nick_name)"

    invoke-static {v10, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move-object/from16 v11, p1

    goto :goto_0

    :cond_0
    const v3, 0x7f100095

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    :goto_0
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/4 v9, 0x1

    move-object v8, v0

    .line 8
    invoke-direct/range {v8 .. v15}, Lcom/farsitel/bazaar/ui/profile/ProfileItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZZILh/f/b/f;)V

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/farsitel/bazaar/ui/profile/ProfileItem;

    const/4 v5, 0x2

    const v3, 0x7f100178

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "context.getString(R.string.phone_number)"

    invoke-static {v6, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v4, v0

    .line 12
    invoke-direct/range {v4 .. v11}, Lcom/farsitel/bazaar/ui/profile/ProfileItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZZILh/f/b/f;)V

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v0, Lcom/farsitel/bazaar/ui/profile/ProfileItem;

    const/4 v13, 0x5

    const v3, 0x7f10001d

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "context.getString(R.string.account)"

    invoke-static {v14, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f10010f

    .line 16
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x0

    move-object v12, v0

    .line 17
    invoke-direct/range {v12 .. v19}, Lcom/farsitel/bazaar/ui/profile/ProfileItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZZILh/f/b/f;)V

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lcom/farsitel/bazaar/ui/profile/ProfileHeaderItem;

    const v3, 0x7f100217

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.user_credit)"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/farsitel/bazaar/ui/profile/ProfileHeaderItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    const v0, 0x7f10023b

    .line 20
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "context.getString(R.string.your_credit)"

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "java.lang.String.format(this, *args)"

    invoke-static {v7, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 21
    new-instance v0, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    const-string v9, ""

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;-><init>(ILjava/lang/String;ZLjava/lang/String;Z)V

    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Lcom/farsitel/bazaar/ui/profile/ProfileItem;

    const/4 v12, 0x7

    const v3, 0x7f100206

    .line 24
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v3, "context.getString(R.string.transactions)"

    invoke-static {v13, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v11, v0

    .line 25
    invoke-direct/range {v11 .. v16}, Lcom/farsitel/bazaar/ui/profile/ProfileItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/farsitel/bazaar/ui/profile/ProfileItem;

    const/16 v4, 0x8

    const v3, 0x7f1000e2

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "context.getString(R.string.gift_card)"

    invoke-static {v5, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v0

    .line 29
    invoke-direct/range {v3 .. v8}, Lcom/farsitel/bazaar/ui/profile/ProfileItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
