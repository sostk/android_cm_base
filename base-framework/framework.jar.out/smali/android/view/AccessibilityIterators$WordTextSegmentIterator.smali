.class Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WordTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;)V

    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    return-object v0
.end method

.method private isEndBoundary(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq p1, v2, :cond_0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isLetterOrDigit(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    return v1

    .end local v0    # "codePoint":I
    :cond_0
    return v2
.end method

.method private isStartBoundary(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public following(I)[I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "textLegth":I
    if-gtz v2, :cond_0

    return-object v4

    :cond_0
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p1, v3, :cond_1

    return-object v4

    :cond_1
    move v1, p1

    .local v1, "start":I
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .local v0, "end":I
    if-eq v0, v5, :cond_5

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3

    .end local v0    # "end":I
    :cond_4
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    if-ne v1, v5, :cond_2

    return-object v4

    .restart local v0    # "end":I
    :cond_5
    return-object v4
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    return-void
.end method

.method public preceding(I)[I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "textLegth":I
    if-gtz v2, :cond_0

    return-object v4

    :cond_0
    if-gtz p1, :cond_1

    return-object v4

    :cond_1
    move v0, p1

    .local v0, "end":I
    if-le v0, v2, :cond_2

    move v0, v2

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    .local v1, "start":I
    if-eq v1, v5, :cond_5

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3

    .end local v1    # "start":I
    :cond_4
    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    return-object v4

    .restart local v1    # "start":I
    :cond_5
    return-object v4
.end method
