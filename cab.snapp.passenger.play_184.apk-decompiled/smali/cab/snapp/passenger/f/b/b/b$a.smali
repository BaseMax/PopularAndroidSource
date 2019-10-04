.class public final Lcab/snapp/passenger/f/b/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/f/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/f/b/b/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcab/snapp/passenger/f/b/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/b/b/b;-><init>(B)V

    iput-object v0, p0, Lcab/snapp/passenger/f/b/b/b$a;->a:Lcab/snapp/passenger/f/b/b/b;

    return-void
.end method


# virtual methods
.method public final addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;
    .locals 1

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/b$a;->a:Lcab/snapp/passenger/f/b/b/b;

    .line 1028
    :try_start_0
    iget-object v0, v0, Lcab/snapp/passenger/f/b/b/b;->a:Lorg/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1032
    invoke-virtual {p1}, Lorg/a/b;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public final addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;
    .locals 3

    .line 72
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/b$a;->a:Lcab/snapp/passenger/f/b/b/b;

    .line 2039
    iget-object v1, v0, Lcab/snapp/passenger/f/b/b/b;->a:Lorg/a/c;

    .line 2042
    :try_start_0
    new-instance v2, Lorg/a/c;

    invoke-direct {v2}, Lorg/a/c;-><init>()V

    iput-object v2, v0, Lcab/snapp/passenger/f/b/b/b;->a:Lorg/a/c;

    .line 2043
    iget-object v0, v0, Lcab/snapp/passenger/f/b/b/b;->a:Lorg/a/c;

    invoke-virtual {v0, p1, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2047
    invoke-virtual {p1}, Lorg/a/b;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public final build()Lorg/a/c;
    .locals 1

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/b$a;->a:Lcab/snapp/passenger/f/b/b/b;

    .line 3006
    iget-object v0, v0, Lcab/snapp/passenger/f/b/b/b;->a:Lorg/a/c;

    return-object v0
.end method
