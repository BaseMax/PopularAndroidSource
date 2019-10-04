.class public Lcom/ebay/glancewrapper/CobrowseCredentials;
.super Ljava/lang/Object;
.source "CobrowseCredentials.java"


# instance fields
.field private final groupNumber:I

.field private final loginKey:Ljava/lang/String;

.field private final uName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ebay/glancewrapper/CobrowseCredentials;->uName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/ebay/glancewrapper/CobrowseCredentials;->loginKey:Ljava/lang/String;

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/glancewrapper/CobrowseCredentials;->groupNumber:I

    return-void
.end method


# virtual methods
.method public getGroupNumber()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/ebay/glancewrapper/CobrowseCredentials;->groupNumber:I

    return v0
.end method
