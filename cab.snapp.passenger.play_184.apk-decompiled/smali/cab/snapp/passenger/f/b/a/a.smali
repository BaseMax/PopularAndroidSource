.class public final Lcab/snapp/passenger/f/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/b/c/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/f/b/a/a;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcab/snapp/passenger/f/b/a/a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a/a;->b:Ljava/util/Map;

    return-object v0
.end method
