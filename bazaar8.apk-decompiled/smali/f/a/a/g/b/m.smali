.class public Lf/a/a/g/b/m;
.super Ljava/lang/Object;
.source "PlayListContainer.java"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lir/cafebazaar/inline/ux/audio/MusicDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/a/a/g/b/m;->b:I

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    iget v1, p0, Lf/a/a/g/b/m;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public a(Ljava/lang/Integer;)Lir/cafebazaar/inline/ux/audio/MusicDescriptor;
    .locals 4

    .line 11
    iget-object v0, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    .line 12
    invoke-virtual {v1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 13
    iget-object p1, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lf/a/a/g/b/m;->a(I)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)V
    .locals 0

    .line 14
    iput p1, p0, Lf/a/a/g/b/m;->b:I

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    .line 4
    invoke-virtual {v1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d()I

    move-result v2

    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 5
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->b(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a(J)V

    .line 9
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a(Landroid/graphics/Bitmap;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lir/cafebazaar/inline/ux/audio/MusicDescriptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    iget v1, p0, Lf/a/a/g/b/m;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    iget v0, p0, Lf/a/a/g/b/m;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lf/a/a/g/b/m;->b:I

    .line 2
    iget v0, p0, Lf/a/a/g/b/m;->b:I

    iget-object v2, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf/a/a/g/b/m;->b:I

    :cond_0
    return v1
.end method

.method public d()V
    .locals 1

    .line 1
    iget v0, p0, Lf/a/a/g/b/m;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lf/a/a/g/b/m;->b:I

    .line 2
    iget v0, p0, Lf/a/a/g/b/m;->b:I

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lf/a/a/g/b/m;->b:I

    :cond_0
    return-void
.end method
