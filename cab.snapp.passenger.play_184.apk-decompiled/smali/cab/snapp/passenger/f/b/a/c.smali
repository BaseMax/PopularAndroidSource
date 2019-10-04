.class public final Lcab/snapp/passenger/f/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/b/c/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/a/c;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcab/snapp/passenger/f/b/a/c;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcab/snapp/passenger/f/b/a/c;->b:Lorg/a/c;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getProperties()Lorg/a/c;
    .locals 1

    .line 51
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a/c;->b:Lorg/a/c;

    return-object v0
.end method
