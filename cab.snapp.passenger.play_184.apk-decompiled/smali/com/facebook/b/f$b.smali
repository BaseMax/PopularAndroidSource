.class public Lcom/facebook/b/f$b;
.super Lcom/facebook/b/o$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/b/f$b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/b/o;

.field b:[Lcom/facebook/b/f$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final c:Ljava/util/zip/ZipFile;

.field final synthetic d:Lcom/facebook/b/f;


# direct methods
.method constructor <init>(Lcom/facebook/b/f;Lcom/facebook/b/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/facebook/b/f$b;->d:Lcom/facebook/b/f;

    invoke-direct {p0}, Lcom/facebook/b/o$e;-><init>()V

    .line 66
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object p1, p1, Lcom/facebook/b/f;->d:Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/b/f$b;->c:Ljava/util/zip/ZipFile;

    .line 67
    iput-object p2, p0, Lcom/facebook/b/f$b;->a:Lcom/facebook/b/o;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/facebook/b/o$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/facebook/b/o$b;

    invoke-virtual {p0}, Lcom/facebook/b/f$b;->c()[Lcom/facebook/b/f$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/b/o$b;-><init>([Lcom/facebook/b/o$a;)V

    return-object v0
.end method

.method protected a(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final b()Lcom/facebook/b/o$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/facebook/b/f$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/b/f$b$a;-><init>(Lcom/facebook/b/f$b;B)V

    return-object v0
.end method

.method final c()[Lcom/facebook/b/f$a;
    .locals 9

    .line 71
    iget-object v0, p0, Lcom/facebook/b/f$b;->b:[Lcom/facebook/b/f$a;

    if-nez v0, :cond_7

    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    iget-object v2, p0, Lcom/facebook/b/f$b;->d:Lcom/facebook/b/f;

    iget-object v2, v2, Lcom/facebook/b/f;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 75
    invoke-static {}, Lcom/facebook/b/m;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v3

    .line 76
    iget-object v4, p0, Lcom/facebook/b/f$b;->c:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 77
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 79
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 80
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    .line 81
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 82
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-static {v3, v7}, Lcom/facebook/b/m;->findAbiScore([Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    .line 85
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/b/f$a;

    if-eqz v7, :cond_1

    .line 87
    iget v7, v7, Lcom/facebook/b/f$a;->b:I

    if-ge v8, v7, :cond_0

    .line 88
    :cond_1
    new-instance v7, Lcom/facebook/b/f$a;

    invoke-direct {v7, v6, v5, v8}, Lcom/facebook/b/f$a;-><init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/facebook/b/f$b;->a:Lcom/facebook/b/o;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/b/o;->setSoSourceAbis([Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/b/f$a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/b/f$a;

    .line 97
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 99
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 100
    aget-object v4, v0, v2

    .line 101
    iget-object v5, v4, Lcom/facebook/b/f$a;->a:Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Lcom/facebook/b/f$a;->name:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/facebook/b/f$b;->a(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 104
    aput-object v4, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_4
    new-array v2, v3, [Lcom/facebook/b/f$a;

    const/4 v3, 0x0

    .line 108
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 109
    aget-object v4, v0, v1

    if-eqz v4, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 111
    aput-object v4, v2, v3

    move v3, v5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 114
    :cond_6
    iput-object v2, p0, Lcom/facebook/b/f$b;->b:[Lcom/facebook/b/f$a;

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/facebook/b/f$b;->b:[Lcom/facebook/b/f$a;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/facebook/b/f$b;->c:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method
