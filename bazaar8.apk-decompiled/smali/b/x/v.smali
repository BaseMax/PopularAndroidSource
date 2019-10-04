.class public Lb/x/v;
.super Lb/y/a/o$a;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/x/w;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lb/x/y$d;

.field public final synthetic d:Lb/x/w;


# direct methods
.method public constructor <init>(Lb/x/w;Ljava/util/List;Ljava/util/List;Lb/x/y$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/x/v;->d:Lb/x/w;

    iput-object p2, p0, Lb/x/v;->a:Ljava/util/List;

    iput-object p3, p0, Lb/x/v;->b:Ljava/util/List;

    iput-object p4, p0, Lb/x/v;->c:Lb/x/y$d;

    invoke-direct {p0}, Lb/y/a/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/v;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(II)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lb/x/v;->c:Lb/x/y$d;

    iget-object v1, p0, Lb/x/v;->a:Ljava/util/List;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iget-object v1, p0, Lb/x/v;->b:Ljava/util/List;

    .line 4
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 5
    invoke-virtual {v0, p1, p2}, Lb/x/y$d;->a(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(II)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lb/x/v;->c:Lb/x/y$d;

    iget-object v1, p0, Lb/x/v;->a:Ljava/util/List;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iget-object v1, p0, Lb/x/v;->b:Ljava/util/List;

    .line 4
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 5
    invoke-virtual {v0, p1, p2}, Lb/x/y$d;->b(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
