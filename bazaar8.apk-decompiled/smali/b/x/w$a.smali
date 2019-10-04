.class public Lb/x/w$a;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/x/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb/x/w$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lb/x/w$a;->a:I

    iput v0, p0, Lb/x/w$a;->a:I

    .line 4
    iget v0, p1, Lb/x/w$a;->b:I

    iput v0, p0, Lb/x/w$a;->b:I

    .line 5
    iget-object p1, p1, Lb/x/w$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lb/x/w$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lb/x/w$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lb/x/w$a;

    .line 3
    iget v0, p0, Lb/x/w$a;->a:I

    iget v2, p1, Lb/x/w$a;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lb/x/w$a;->b:I

    iget v2, p1, Lb/x/w$a;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lb/x/w$a;->c:Ljava/lang/String;

    iget-object p1, p1, Lb/x/w$a;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lb/x/w$a;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Lb/x/w$a;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lb/x/w$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
