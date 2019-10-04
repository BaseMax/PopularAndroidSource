.class public final Lb/x/b;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/x/b$a;
    }
.end annotation


# instance fields
.field public final a:Lb/x/w;

.field public final b:Landroid/content/Context;

.field public c:Z


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;Lb/x/w;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/x/b;->c:Z

    .line 3
    iput-object p2, p0, Lb/x/b;->a:Lb/x/w;

    .line 4
    invoke-virtual {p1}, Landroidx/preference/Preference;->h()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/x/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Lb/x/b$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)",
            "Lb/x/b$a;"
        }
    .end annotation

    .line 25
    new-instance v0, Lb/x/b$a;

    iget-object v1, p0, Lb/x/b;->b:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Lb/x/b$a;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 27
    new-instance p2, Lb/x/a;

    invoke-direct {p2, p0, p1}, Lb/x/a;-><init>(Lb/x/b;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$c;)V

    return-object v0
.end method

.method public final a(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/x/b;->c:Z

    .line 2
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->L()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->N()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v0, v4, :cond_b

    .line 6
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->g(I)Landroidx/preference/Preference;

    move-result-object v6

    .line 7
    invoke-virtual {v6}, Landroidx/preference/Preference;->z()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_8

    :cond_1
    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->L()I

    move-result v7

    if-ge v5, v7, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10
    :cond_3
    :goto_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_3
    instance-of v7, v6, Landroidx/preference/PreferenceGroup;

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 12
    :cond_4
    check-cast v6, Landroidx/preference/PreferenceGroup;

    .line 13
    invoke-virtual {v6}, Landroidx/preference/PreferenceGroup;->O()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_8

    .line 14
    :cond_5
    invoke-virtual {p0, v6}, Lb/x/b;->a(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v6

    if-eqz v1, :cond_7

    .line 15
    iget-boolean v7, p0, Lb/x/b;->c:Z

    if-nez v7, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Nested expand buttons are not supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/preference/Preference;

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->L()I

    move-result v8

    if-ge v5, v8, :cond_8

    goto :goto_6

    .line 19
    :cond_8
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 20
    :cond_9
    :goto_6
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    if-eqz v1, :cond_c

    .line 21
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->L()I

    move-result v0

    if-le v5, v0, :cond_c

    .line 22
    invoke-virtual {p0, p1, v3}, Lb/x/b;->a(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Lb/x/b$a;

    move-result-object p1

    .line 23
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_c
    iget-boolean p1, p0, Lb/x/b;->c:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lb/x/b;->c:Z

    return-object v2
.end method

.method public b(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lb/x/b;->a(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
