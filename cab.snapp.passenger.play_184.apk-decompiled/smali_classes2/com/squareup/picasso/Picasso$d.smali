.class public interface abstract Lcom/squareup/picasso/Picasso$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# static fields
.field public static final IDENTITY:Lcom/squareup/picasso/Picasso$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/squareup/picasso/Picasso$d$1;

    invoke-direct {v0}, Lcom/squareup/picasso/Picasso$d$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/Picasso$d;->IDENTITY:Lcom/squareup/picasso/Picasso$d;

    return-void
.end method


# virtual methods
.method public abstract transformRequest(Lcom/squareup/picasso/w;)Lcom/squareup/picasso/w;
.end method
